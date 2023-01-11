import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/failures.dart';
import 'package:kt_dart/kt.dart';

//! Convention :
//! 1. On retourne le right si la condition est validée et le left dans le else
//! 2. Chaque fonction commence par le "validate" et ne vérifie qu'une seule chose

// Vérifie que l'email est au bon format
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

// Vérifie que le password est assez long
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

// Vérifie qu'une string ne dépasse pas une taille maximum passée en paramètre
Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length > maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(
        failedValue: input,
        max: maxLength,
      ),
    );
  }
}

// Vérifie qu'une string n'est pas vide
Either<ValueFailure<String>, String> validateStringNotEmpty(
  String input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.empty(failedValue: input),
    );
  }
}

// Vérifie qu'une string est bien sur une seule ligne
Either<ValueFailure<String>, String> validateSingleLine(
  String input,
) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(
      ValueFailure.multiline(failedValue: input),
    );
  }
}

// Vérifie qu'une string est bien sur une seule ligne
Either<ValueFailure<KtList>, KtList> validateMaxListLength(
  KtList input,
  int max,
) {
  if (input.size <= max) {
    return right(input);
  } else {
    return left(
      ValueFailure.listTooLong(
        failedValue: input,
        max: max,
      ),
    );
  }
}
