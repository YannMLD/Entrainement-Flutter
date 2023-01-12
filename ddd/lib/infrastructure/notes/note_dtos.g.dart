// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDTO _$$_NoteDTOFromJson(Map<String, dynamic> json) => _$_NoteDTO(
      json['id'] as String?,
      json['body'] as String,
      json['color'] as int,
      (json['todos'] as List<dynamic>)
          .map((e) => TodoItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_NoteDTOToJson(_$_NoteDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'color': instance.color,
      'todos': instance.todos,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_TodoItem _$$_TodoItemFromJson(Map<String, dynamic> json) => _$_TodoItem(
      json['id'] as String,
      json['name'] as String,
      json['isDone'] as bool,
    );

Map<String, dynamic> _$$_TodoItemToJson(_$_TodoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDone': instance.isDone,
    };
