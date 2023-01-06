

import 'package:ddd/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(
    this.valueFailure,
  );

  @override
  String toString() {
    const explication =" Une ValueFailure est allé à un point non prévu. On ferme l'application.";
    return Error.safeToString("$explication Erreur : $valueFailure"); 
  }
}
