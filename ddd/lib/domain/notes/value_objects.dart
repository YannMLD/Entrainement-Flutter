import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/failures.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/core/value_transformer.dart';
import 'package:ddd/domain/core/value_validators.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

class NoteBody extends ValueObjects {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory NoteBody(String input) {
    assert(input != null);
    return NoteBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const NoteBody._(this.value);
}

class TodoName extends ValueObjects {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const TodoName._(this.value);
}

class NoteColor extends ValueObjects {
  static const List<Color> predefinedColors = [
    Color(0xFFF0C808),
    Color(0xFF06AED5),
    Color(0xFF7DBA84),
    Color(0xFFFF674D),
    Color(0xFFC89F9C),
  ];

  @override
  final Either<ValueFailure<Color>, Color> value;

  static const maxLength = 1000;

  factory NoteColor(Color input) {
    assert(input != null);
    return NoteColor._(
      right(makeColorOpaque(input)),
    );
  }

  const NoteColor._(this.value);
}

class List3<T> extends ValueObjects<KtList> {
  @override
  final Either<ValueFailure<KtList>, KtList> value;

  static const maxLength = 3;

  factory List3(KtList input) {
    assert(input != null);
    return List3._(validateMaxListLength(input, maxLength));
  }

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length >= maxLength;
  }

  const List3._(this.value);
}
