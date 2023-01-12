import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/notes/note.dart';
import 'package:ddd/domain/notes/todo_item.dart';
import 'package:ddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
abstract class NoteDTO implements _$NoteDTO {
  const NoteDTO._();

  const factory NoteDTO(
    String? id,
    String body,
    int color,
    List<TodoItemDTO> todos,
    @ServerTimestampConverter() FieldValue serverTimeStamp,
  ) = _NoteDTO;

  factory NoteDTO.fromDomain(Note note) {
    return NoteDTO(
      note.id.getOrCrash(),
      note.body.getOrCrash(),
      note.color.getOrCrash().value,
      note.todos
          .getOrCrash()
          .map(
            (todoItem) => TodoItemDTO.fromDomain(todoItem),
          )
          .asList(),
      FieldValue.serverTimestamp(),
    );
  }

  factory NoteDTO.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return NoteDTO.fromJson(doc.data()!).copyWith(id: doc.id);
  }

  Note toDomain() {
    return Note(
      UniqueId.fromUniqueString(id!),
      NoteBody(body),
      NoteColor(Color(color)),
      List3(
        todos.map((todo) => todo.toDomain()).toImmutableList(),
      ),
    );
  }

  factory NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$NoteDTOFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class TodoItemDTO implements _$TodoItemDTO {
  const TodoItemDTO._();

  const factory TodoItemDTO(
    String id,
    String name,
    bool isDone,
  ) = _TodoItem;

  factory TodoItemDTO.fromDomain(TodoItem todoItem) {
    return TodoItemDTO(
      todoItem.id.getOrCrash(),
      todoItem.name.getOrCrash(),
      todoItem.isDone,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      UniqueId.fromUniqueString(id),
      TodoName(name),
      isDone,
    );
  }

  factory TodoItemDTO.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDTOFromJson(json);
}
