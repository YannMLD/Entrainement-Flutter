// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDTO _$NoteDTOFromJson(Map<String, dynamic> json) {
  return _NoteDTO.fromJson(json);
}

/// @nodoc
mixin _$NoteDTO {
  String? get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  List<TodoItemDTO> get todos => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDTOCopyWith<NoteDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDTOCopyWith<$Res> {
  factory $NoteDTOCopyWith(NoteDTO value, $Res Function(NoteDTO) then) =
      _$NoteDTOCopyWithImpl<$Res, NoteDTO>;
  @useResult
  $Res call(
      {String? id,
      String body,
      int color,
      List<TodoItemDTO> todos,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$NoteDTOCopyWithImpl<$Res, $Val extends NoteDTO>
    implements $NoteDTOCopyWith<$Res> {
  _$NoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? body = null,
    Object? color = null,
    Object? todos = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItemDTO>,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteDTOCopyWith<$Res> implements $NoteDTOCopyWith<$Res> {
  factory _$$_NoteDTOCopyWith(
          _$_NoteDTO value, $Res Function(_$_NoteDTO) then) =
      __$$_NoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String body,
      int color,
      List<TodoItemDTO> todos,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$_NoteDTOCopyWithImpl<$Res>
    extends _$NoteDTOCopyWithImpl<$Res, _$_NoteDTO>
    implements _$$_NoteDTOCopyWith<$Res> {
  __$$_NoteDTOCopyWithImpl(_$_NoteDTO _value, $Res Function(_$_NoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? body = null,
    Object? color = null,
    Object? todos = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$_NoteDTO(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItemDTO>,
      null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteDTO extends _NoteDTO {
  const _$_NoteDTO(
      this.id,
      this.body,
      this.color,
      final List<TodoItemDTO> todos,
      @ServerTimestampConverter() this.serverTimeStamp)
      : _todos = todos,
        super._();

  factory _$_NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDTOFromJson(json);

  @override
  final String? id;
  @override
  final String body;
  @override
  final int color;
  final List<TodoItemDTO> _todos;
  @override
  List<TodoItemDTO> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'NoteDTO(id: $id, body: $body, color: $color, todos: $todos, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, body, color,
      const DeepCollectionEquality().hash(_todos), serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteDTOCopyWith<_$_NoteDTO> get copyWith =>
      __$$_NoteDTOCopyWithImpl<_$_NoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDTOToJson(
      this,
    );
  }
}

abstract class _NoteDTO extends NoteDTO {
  const factory _NoteDTO(
          final String? id,
          final String body,
          final int color,
          final List<TodoItemDTO> todos,
          @ServerTimestampConverter() final FieldValue serverTimeStamp) =
      _$_NoteDTO;
  const _NoteDTO._() : super._();

  factory _NoteDTO.fromJson(Map<String, dynamic> json) = _$_NoteDTO.fromJson;

  @override
  String? get id;
  @override
  String get body;
  @override
  int get color;
  @override
  List<TodoItemDTO> get todos;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_NoteDTOCopyWith<_$_NoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

TodoItemDTO _$TodoItemDTOFromJson(Map<String, dynamic> json) {
  return _TodoItem.fromJson(json);
}

/// @nodoc
mixin _$TodoItemDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoItemDTOCopyWith<TodoItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemDTOCopyWith<$Res> {
  factory $TodoItemDTOCopyWith(
          TodoItemDTO value, $Res Function(TodoItemDTO) then) =
      _$TodoItemDTOCopyWithImpl<$Res, TodoItemDTO>;
  @useResult
  $Res call({String id, String name, bool isDone});
}

/// @nodoc
class _$TodoItemDTOCopyWithImpl<$Res, $Val extends TodoItemDTO>
    implements $TodoItemDTOCopyWith<$Res> {
  _$TodoItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoItemCopyWith<$Res>
    implements $TodoItemDTOCopyWith<$Res> {
  factory _$$_TodoItemCopyWith(
          _$_TodoItem value, $Res Function(_$_TodoItem) then) =
      __$$_TodoItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, bool isDone});
}

/// @nodoc
class __$$_TodoItemCopyWithImpl<$Res>
    extends _$TodoItemDTOCopyWithImpl<$Res, _$_TodoItem>
    implements _$$_TodoItemCopyWith<$Res> {
  __$$_TodoItemCopyWithImpl(
      _$_TodoItem _value, $Res Function(_$_TodoItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDone = null,
  }) {
    return _then(_$_TodoItem(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoItem extends _TodoItem {
  const _$_TodoItem(this.id, this.name, this.isDone) : super._();

  factory _$_TodoItem.fromJson(Map<String, dynamic> json) =>
      _$$_TodoItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'TodoItemDTO(id: $id, name: $name, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoItemCopyWith<_$_TodoItem> get copyWith =>
      __$$_TodoItemCopyWithImpl<_$_TodoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoItemToJson(
      this,
    );
  }
}

abstract class _TodoItem extends TodoItemDTO {
  const factory _TodoItem(
      final String id, final String name, final bool isDone) = _$_TodoItem;
  const _TodoItem._() : super._();

  factory _TodoItem.fromJson(Map<String, dynamic> json) = _$_TodoItem.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_TodoItemCopyWith<_$_TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
