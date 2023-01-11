import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem with _$TodoItem {
  const factory TodoItem(
    UniqueId id,
    TodoName name,
    bool isDone,
  ) = _TodoItem;
}
