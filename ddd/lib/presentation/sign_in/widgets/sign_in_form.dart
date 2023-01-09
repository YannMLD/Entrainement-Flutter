import 'dart:developer';

import 'package:ddd/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
                // Flushbar()
                var snackBar = SnackBar(
                  content: Text(
                    failure.map(
                      cancelledByUser: (_) => 'Connexion annulée',
                      serverError: (_) => 'Erreur des serveurs Google',
                      emailAlreadyInUse: (_) => 'Email déjà utilisée',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Email ou mot de passe invalide',
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
                  (_) => {
                        //TODO: Navigate to another page
                      }));
    }, builder: (context, state) {
      return Form(
          autovalidateMode: AutovalidateMode.always,
          child: ListView(
            children: [
              const Text(
                "📝",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 80),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autocorrect: false,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            invalidEmail: (_) => 'Format email incorect',
                            orElse: () => null),
                        (_) => null),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .password
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            shortPassword: (_) => 'Mot de passe trop court',
                            orElse: () => null),
                        (_) => null),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithEmailAndPasswordPressed());
                          },
                          child: const Text('Connexion'))),
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .registerWithEmailAndPasswordPressed());
                          },
                          child: const Text('Créer un compte'))),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<SignInFormBloc>()
                        .add(const SignInFormEvent.signInWithGooglePressed());
                  },
                  child: const Text("Se connecter avec Google"))
            ],
          ));
    });
  }
}
