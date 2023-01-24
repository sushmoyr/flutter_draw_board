// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Board _$BoardFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Board.fromJson(json);
    case 'create':
      return _InitialBoard.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Board',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Board {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  List<Sketch> get sketches => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double width, double height, List<Sketch> sketches)
        $default, {
    required TResult Function(
            double width, double height, List<Sketch> sketches)
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(double width, double height, List<Sketch> sketches)?
        $default, {
    TResult? Function(double width, double height, List<Sketch> sketches)?
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(double width, double height, List<Sketch> sketches)?
        $default, {
    TResult Function(double width, double height, List<Sketch> sketches)?
        create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Board value) $default, {
    required TResult Function(_InitialBoard value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Board value)? $default, {
    TResult? Function(_InitialBoard value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Board value)? $default, {
    TResult Function(_InitialBoard value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res, Board>;
  @useResult
  $Res call({double width, double height, List<Sketch> sketches});
}

/// @nodoc
class _$BoardCopyWithImpl<$Res, $Val extends Board>
    implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? sketches = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      sketches: null == sketches
          ? _value.sketches
          : sketches // ignore: cast_nullable_to_non_nullable
              as List<Sketch>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoardCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$$_BoardCopyWith(_$_Board value, $Res Function(_$_Board) then) =
      __$$_BoardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height, List<Sketch> sketches});
}

/// @nodoc
class __$$_BoardCopyWithImpl<$Res> extends _$BoardCopyWithImpl<$Res, _$_Board>
    implements _$$_BoardCopyWith<$Res> {
  __$$_BoardCopyWithImpl(_$_Board _value, $Res Function(_$_Board) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? sketches = null,
  }) {
    return _then(_$_Board(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      sketches: null == sketches
          ? _value._sketches
          : sketches // ignore: cast_nullable_to_non_nullable
              as List<Sketch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Board extends _Board {
  const _$_Board(
      {required this.width,
      required this.height,
      final List<Sketch> sketches = const [],
      final String? $type})
      : _sketches = sketches,
        $type = $type ?? 'default',
        super._();

  factory _$_Board.fromJson(Map<String, dynamic> json) =>
      _$$_BoardFromJson(json);

  @override
  final double width;
  @override
  final double height;
  final List<Sketch> _sketches;
  @override
  @JsonKey()
  List<Sketch> get sketches {
    if (_sketches is EqualUnmodifiableListView) return _sketches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sketches);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Board(width: $width, height: $height, sketches: $sketches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Board &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._sketches, _sketches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height,
      const DeepCollectionEquality().hash(_sketches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoardCopyWith<_$_Board> get copyWith =>
      __$$_BoardCopyWithImpl<_$_Board>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double width, double height, List<Sketch> sketches)
        $default, {
    required TResult Function(
            double width, double height, List<Sketch> sketches)
        create,
  }) {
    return $default(width, height, sketches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(double width, double height, List<Sketch> sketches)?
        $default, {
    TResult? Function(double width, double height, List<Sketch> sketches)?
        create,
  }) {
    return $default?.call(width, height, sketches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(double width, double height, List<Sketch> sketches)?
        $default, {
    TResult Function(double width, double height, List<Sketch> sketches)?
        create,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(width, height, sketches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Board value) $default, {
    required TResult Function(_InitialBoard value) create,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Board value)? $default, {
    TResult? Function(_InitialBoard value)? create,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Board value)? $default, {
    TResult Function(_InitialBoard value)? create,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoardToJson(
      this,
    );
  }
}

abstract class _Board extends Board {
  const factory _Board(
      {required final double width,
      required final double height,
      final List<Sketch> sketches}) = _$_Board;
  const _Board._() : super._();

  factory _Board.fromJson(Map<String, dynamic> json) = _$_Board.fromJson;

  @override
  double get width;
  @override
  double get height;
  @override
  List<Sketch> get sketches;
  @override
  @JsonKey(ignore: true)
  _$$_BoardCopyWith<_$_Board> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialBoardCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$$_InitialBoardCopyWith(
          _$_InitialBoard value, $Res Function(_$_InitialBoard) then) =
      __$$_InitialBoardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height, List<Sketch> sketches});
}

/// @nodoc
class __$$_InitialBoardCopyWithImpl<$Res>
    extends _$BoardCopyWithImpl<$Res, _$_InitialBoard>
    implements _$$_InitialBoardCopyWith<$Res> {
  __$$_InitialBoardCopyWithImpl(
      _$_InitialBoard _value, $Res Function(_$_InitialBoard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? sketches = null,
  }) {
    return _then(_$_InitialBoard(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      sketches: null == sketches
          ? _value._sketches
          : sketches // ignore: cast_nullable_to_non_nullable
              as List<Sketch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitialBoard extends _InitialBoard {
  const _$_InitialBoard(
      {this.width = 8.5,
      this.height = 11,
      final List<Sketch> sketches = const [],
      final String? $type})
      : _sketches = sketches,
        $type = $type ?? 'create',
        super._();

  factory _$_InitialBoard.fromJson(Map<String, dynamic> json) =>
      _$$_InitialBoardFromJson(json);

  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double height;
  final List<Sketch> _sketches;
  @override
  @JsonKey()
  List<Sketch> get sketches {
    if (_sketches is EqualUnmodifiableListView) return _sketches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sketches);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Board.create(width: $width, height: $height, sketches: $sketches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialBoard &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._sketches, _sketches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height,
      const DeepCollectionEquality().hash(_sketches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialBoardCopyWith<_$_InitialBoard> get copyWith =>
      __$$_InitialBoardCopyWithImpl<_$_InitialBoard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double width, double height, List<Sketch> sketches)
        $default, {
    required TResult Function(
            double width, double height, List<Sketch> sketches)
        create,
  }) {
    return create(width, height, sketches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(double width, double height, List<Sketch> sketches)?
        $default, {
    TResult? Function(double width, double height, List<Sketch> sketches)?
        create,
  }) {
    return create?.call(width, height, sketches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(double width, double height, List<Sketch> sketches)?
        $default, {
    TResult Function(double width, double height, List<Sketch> sketches)?
        create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(width, height, sketches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Board value) $default, {
    required TResult Function(_InitialBoard value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Board value)? $default, {
    TResult? Function(_InitialBoard value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Board value)? $default, {
    TResult Function(_InitialBoard value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitialBoardToJson(
      this,
    );
  }
}

abstract class _InitialBoard extends Board {
  const factory _InitialBoard(
      {final double width,
      final double height,
      final List<Sketch> sketches}) = _$_InitialBoard;
  const _InitialBoard._() : super._();

  factory _InitialBoard.fromJson(Map<String, dynamic> json) =
      _$_InitialBoard.fromJson;

  @override
  double get width;
  @override
  double get height;
  @override
  List<Sketch> get sketches;
  @override
  @JsonKey(ignore: true)
  _$$_InitialBoardCopyWith<_$_InitialBoard> get copyWith =>
      throw _privateConstructorUsedError;
}
