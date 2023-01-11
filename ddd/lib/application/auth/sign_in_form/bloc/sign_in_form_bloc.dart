import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:ddd/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/auth/auth_failure.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<RegisterWithEmailAndPasswordPressed>(
      _onRegisterWithEmailAndPasswordPressed,
    );
    on<SignInWithEmailAndPasswordPressed>(_onSignInWithEmailAndPasswordPressed);
    on<SignInWithGooglePressed>(_onSignInWithGooglePressed);
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignInFormState> emit) {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.emailString),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<SignInFormState> emit,
  ) {
    emit(
      state.copyWith(
        password: Password(event.passwordString),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void _onRegisterWithEmailAndPasswordPressed(
    RegisterWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) {
    _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.registerWithEmailAndPassword,
    );
  }

  void _onSignInWithEmailAndPasswordPressed(
    SignInWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) {
    _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.signInWithEmailAndPassword,
    );
  }

  Future<void> _onSignInWithGooglePressed(
    SignInWithGooglePressed event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmiting: true,
        authFailureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    emit(
      state.copyWith(
        isSubmiting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmiting: true,
          authFailureOrSuccessOption: none(),
        ),
      ); // On reset l'état du test de connexion

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );

      log(failureOrSuccess.toString());

      emit(
        state.copyWith(
          isSubmiting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    }
  }
}
