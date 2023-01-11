import 'dart:ui';

import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/notes/todo_item.dart';
import 'package:ddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';

@freezed
abstract class Note with _$Note {
  const factory Note(
    UniqueId id,
    NoteBody body,
    Color color,
    List3<TodoItem> todos,
  ) = _Note;
}
