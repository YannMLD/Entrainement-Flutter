import 'dart:ui';

import 'package:ddd/domain/core/failures.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/notes/todo_item.dart';
import 'package:ddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();

  const factory Note(
    UniqueId id,
    NoteBody body,
    NoteColor color,
    List3<TodoItem> todos,
  ) = _Note;

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(
          todos
              .getOrCrash()
              //? On récupère les failureOptions de l'entité TodoItem - PAS les failureOrUnit qui viendrait d'un Value Object
              .map((TodoItem todoItem) => todoItem.failureOption)
              .filter((Option o) => o.isSome())
              .getOrElse(0, (_) => none())
              //? Si on ne peut pas récupérer l'élément 0, c'est que la liste est vide et donc on retourne none()
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold(
          (f) => some(f),
          (_) => none(),
        );
  }

  factory Note.empty() => Note(
        UniqueId(),
        NoteBody(''),
        NoteColor(NoteColor.predefinedColors.first),
        List3(emptyList()),
      );
}
