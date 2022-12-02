import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/failures.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ValueObjects<T> {
  const ValueObjects();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObjects<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
