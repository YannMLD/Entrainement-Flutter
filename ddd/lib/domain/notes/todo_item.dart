// ignore_for_file: sort_unnamed_constructors_first

import 'package:ddd/domain/core/failures.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold(
      (f) => some(f),
      (_) => none(),
    );
  }

  const factory TodoItem(
    UniqueId id,
    TodoName name,
    bool isDone,
  ) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        UniqueId(),
        TodoName(''),
        false,
      );
}
