// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draw_board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawBoardState {
  Board get board => throw _privateConstructorUsedError;
  Offset get translation => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  Sketch? get activeSketch => throw _privateConstructorUsedError;
  Attributes get selectedAttributes => throw _privateConstructorUsedError;
  Map<String, void Function(Canvas, Sketch)>? get painters =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)
        drawing,
    required TResult Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)
        moving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        drawing,
    TResult? Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        moving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        drawing,
    TResult Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        moving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Drawing value) drawing,
    required TResult Function(Moving value) moving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Drawing value)? drawing,
    TResult? Function(Moving value)? moving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Drawing value)? drawing,
    TResult Function(Moving value)? moving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawBoardStateCopyWith<DrawBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawBoardStateCopyWith<$Res> {
  factory $DrawBoardStateCopyWith(
          DrawBoardState value, $Res Function(DrawBoardState) then) =
      _$DrawBoardStateCopyWithImpl<$Res, DrawBoardState>;
  @useResult
  $Res call(
      {Board board,
      Offset translation,
      double scale,
      Sketch? activeSketch,
      Attributes selectedAttributes,
      Map<String, void Function(Canvas, Sketch)>? painters});

  $BoardCopyWith<$Res> get board;
  $SketchCopyWith<$Res>? get activeSketch;
  $AttributesCopyWith<$Res> get selectedAttributes;
}

/// @nodoc
class _$DrawBoardStateCopyWithImpl<$Res, $Val extends DrawBoardState>
    implements $DrawBoardStateCopyWith<$Res> {
  _$DrawBoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? translation = null,
    Object? scale = null,
    Object? activeSketch = freezed,
    Object? selectedAttributes = null,
    Object? painters = freezed,
  }) {
    return _then(_value.copyWith(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Offset,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      activeSketch: freezed == activeSketch
          ? _value.activeSketch
          : activeSketch // ignore: cast_nullable_to_non_nullable
              as Sketch?,
      selectedAttributes: null == selectedAttributes
          ? _value.selectedAttributes
          : selectedAttributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      painters: freezed == painters
          ? _value.painters
          : painters // ignore: cast_nullable_to_non_nullable
              as Map<String, void Function(Canvas, Sketch)>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardCopyWith<$Res> get board {
    return $BoardCopyWith<$Res>(_value.board, (value) {
      return _then(_value.copyWith(board: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SketchCopyWith<$Res>? get activeSketch {
    if (_value.activeSketch == null) {
      return null;
    }

    return $SketchCopyWith<$Res>(_value.activeSketch!, (value) {
      return _then(_value.copyWith(activeSketch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res> get selectedAttributes {
    return $AttributesCopyWith<$Res>(_value.selectedAttributes, (value) {
      return _then(_value.copyWith(selectedAttributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DrawingCopyWith<$Res>
    implements $DrawBoardStateCopyWith<$Res> {
  factory _$$DrawingCopyWith(_$Drawing value, $Res Function(_$Drawing) then) =
      __$$DrawingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Board board,
      Offset translation,
      double scale,
      Sketch? activeSketch,
      String selectedSketch,
      Attributes selectedAttributes,
      Map<String, void Function(Canvas, Sketch)>? painters});

  @override
  $BoardCopyWith<$Res> get board;
  @override
  $SketchCopyWith<$Res>? get activeSketch;
  @override
  $AttributesCopyWith<$Res> get selectedAttributes;
}

/// @nodoc
class __$$DrawingCopyWithImpl<$Res>
    extends _$DrawBoardStateCopyWithImpl<$Res, _$Drawing>
    implements _$$DrawingCopyWith<$Res> {
  __$$DrawingCopyWithImpl(_$Drawing _value, $Res Function(_$Drawing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? translation = null,
    Object? scale = null,
    Object? activeSketch = freezed,
    Object? selectedSketch = null,
    Object? selectedAttributes = null,
    Object? painters = freezed,
  }) {
    return _then(_$Drawing(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Offset,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      activeSketch: freezed == activeSketch
          ? _value.activeSketch
          : activeSketch // ignore: cast_nullable_to_non_nullable
              as Sketch?,
      selectedSketch: null == selectedSketch
          ? _value.selectedSketch
          : selectedSketch // ignore: cast_nullable_to_non_nullable
              as String,
      selectedAttributes: null == selectedAttributes
          ? _value.selectedAttributes
          : selectedAttributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      painters: freezed == painters
          ? _value._painters
          : painters // ignore: cast_nullable_to_non_nullable
              as Map<String, void Function(Canvas, Sketch)>?,
    ));
  }
}

/// @nodoc

class _$Drawing implements Drawing {
  const _$Drawing(
      {required this.board,
      this.translation = Offset.zero,
      this.scale = 1.0,
      this.activeSketch,
      this.selectedSketch = 'scribble',
      this.selectedAttributes = const Attributes.initial(),
      final Map<String, void Function(Canvas, Sketch)>? painters})
      : _painters = painters;

  @override
  final Board board;
  @override
  @JsonKey()
  final Offset translation;
  @override
  @JsonKey()
  final double scale;
  @override
  final Sketch? activeSketch;
  @override
  @JsonKey()
  final String selectedSketch;
  @override
  @JsonKey()
  final Attributes selectedAttributes;
  final Map<String, void Function(Canvas, Sketch)>? _painters;
  @override
  Map<String, void Function(Canvas, Sketch)>? get painters {
    final value = _painters;
    if (value == null) return null;
    if (_painters is EqualUnmodifiableMapView) return _painters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DrawBoardState.drawing(board: $board, translation: $translation, scale: $scale, activeSketch: $activeSketch, selectedSketch: $selectedSketch, selectedAttributes: $selectedAttributes, painters: $painters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Drawing &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.activeSketch, activeSketch) ||
                other.activeSketch == activeSketch) &&
            (identical(other.selectedSketch, selectedSketch) ||
                other.selectedSketch == selectedSketch) &&
            (identical(other.selectedAttributes, selectedAttributes) ||
                other.selectedAttributes == selectedAttributes) &&
            const DeepCollectionEquality().equals(other._painters, _painters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      board,
      translation,
      scale,
      activeSketch,
      selectedSketch,
      selectedAttributes,
      const DeepCollectionEquality().hash(_painters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawingCopyWith<_$Drawing> get copyWith =>
      __$$DrawingCopyWithImpl<_$Drawing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)
        drawing,
    required TResult Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)
        moving,
  }) {
    return drawing(board, translation, scale, activeSketch, selectedSketch,
        selectedAttributes, painters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        drawing,
    TResult? Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        moving,
  }) {
    return drawing?.call(board, translation, scale, activeSketch,
        selectedSketch, selectedAttributes, painters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        drawing,
    TResult Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        moving,
    required TResult orElse(),
  }) {
    if (drawing != null) {
      return drawing(board, translation, scale, activeSketch, selectedSketch,
          selectedAttributes, painters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Drawing value) drawing,
    required TResult Function(Moving value) moving,
  }) {
    return drawing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Drawing value)? drawing,
    TResult? Function(Moving value)? moving,
  }) {
    return drawing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Drawing value)? drawing,
    TResult Function(Moving value)? moving,
    required TResult orElse(),
  }) {
    if (drawing != null) {
      return drawing(this);
    }
    return orElse();
  }
}

abstract class Drawing implements DrawBoardState {
  const factory Drawing(
      {required final Board board,
      final Offset translation,
      final double scale,
      final Sketch? activeSketch,
      final String selectedSketch,
      final Attributes selectedAttributes,
      final Map<String, void Function(Canvas, Sketch)>? painters}) = _$Drawing;

  @override
  Board get board;
  @override
  Offset get translation;
  @override
  double get scale;
  @override
  Sketch? get activeSketch;
  String get selectedSketch;
  @override
  Attributes get selectedAttributes;
  @override
  Map<String, void Function(Canvas, Sketch)>? get painters;
  @override
  @JsonKey(ignore: true)
  _$$DrawingCopyWith<_$Drawing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovingCopyWith<$Res>
    implements $DrawBoardStateCopyWith<$Res> {
  factory _$$MovingCopyWith(_$Moving value, $Res Function(_$Moving) then) =
      __$$MovingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Board board,
      Offset translation,
      Offset focalPoint,
      double scale,
      Sketch? activeSketch,
      Attributes selectedAttributes,
      Map<String, void Function(Canvas, Sketch)>? painters});

  @override
  $BoardCopyWith<$Res> get board;
  @override
  $SketchCopyWith<$Res>? get activeSketch;
  @override
  $AttributesCopyWith<$Res> get selectedAttributes;
}

/// @nodoc
class __$$MovingCopyWithImpl<$Res>
    extends _$DrawBoardStateCopyWithImpl<$Res, _$Moving>
    implements _$$MovingCopyWith<$Res> {
  __$$MovingCopyWithImpl(_$Moving _value, $Res Function(_$Moving) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? translation = null,
    Object? focalPoint = null,
    Object? scale = null,
    Object? activeSketch = freezed,
    Object? selectedAttributes = null,
    Object? painters = freezed,
  }) {
    return _then(_$Moving(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Offset,
      focalPoint: null == focalPoint
          ? _value.focalPoint
          : focalPoint // ignore: cast_nullable_to_non_nullable
              as Offset,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      activeSketch: freezed == activeSketch
          ? _value.activeSketch
          : activeSketch // ignore: cast_nullable_to_non_nullable
              as Sketch?,
      selectedAttributes: null == selectedAttributes
          ? _value.selectedAttributes
          : selectedAttributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      painters: freezed == painters
          ? _value._painters
          : painters // ignore: cast_nullable_to_non_nullable
              as Map<String, void Function(Canvas, Sketch)>?,
    ));
  }
}

/// @nodoc

class _$Moving implements Moving {
  const _$Moving(
      {required this.board,
      this.translation = Offset.zero,
      this.focalPoint = Offset.zero,
      this.scale = 1.0,
      this.activeSketch,
      this.selectedAttributes = const Attributes.initial(),
      final Map<String, void Function(Canvas, Sketch)>? painters})
      : _painters = painters;

  @override
  final Board board;
  @override
  @JsonKey()
  final Offset translation;
  @override
  @JsonKey()
  final Offset focalPoint;
  @override
  @JsonKey()
  final double scale;
  @override
  final Sketch? activeSketch;
  @override
  @JsonKey()
  final Attributes selectedAttributes;
  final Map<String, void Function(Canvas, Sketch)>? _painters;
  @override
  Map<String, void Function(Canvas, Sketch)>? get painters {
    final value = _painters;
    if (value == null) return null;
    if (_painters is EqualUnmodifiableMapView) return _painters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DrawBoardState.moving(board: $board, translation: $translation, focalPoint: $focalPoint, scale: $scale, activeSketch: $activeSketch, selectedAttributes: $selectedAttributes, painters: $painters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Moving &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.focalPoint, focalPoint) ||
                other.focalPoint == focalPoint) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.activeSketch, activeSketch) ||
                other.activeSketch == activeSketch) &&
            (identical(other.selectedAttributes, selectedAttributes) ||
                other.selectedAttributes == selectedAttributes) &&
            const DeepCollectionEquality().equals(other._painters, _painters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      board,
      translation,
      focalPoint,
      scale,
      activeSketch,
      selectedAttributes,
      const DeepCollectionEquality().hash(_painters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovingCopyWith<_$Moving> get copyWith =>
      __$$MovingCopyWithImpl<_$Moving>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)
        drawing,
    required TResult Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)
        moving,
  }) {
    return moving(board, translation, focalPoint, scale, activeSketch,
        selectedAttributes, painters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        drawing,
    TResult? Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        moving,
  }) {
    return moving?.call(board, translation, focalPoint, scale, activeSketch,
        selectedAttributes, painters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Board board,
            Offset translation,
            double scale,
            Sketch? activeSketch,
            String selectedSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        drawing,
    TResult Function(
            Board board,
            Offset translation,
            Offset focalPoint,
            double scale,
            Sketch? activeSketch,
            Attributes selectedAttributes,
            Map<String, void Function(Canvas, Sketch)>? painters)?
        moving,
    required TResult orElse(),
  }) {
    if (moving != null) {
      return moving(board, translation, focalPoint, scale, activeSketch,
          selectedAttributes, painters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Drawing value) drawing,
    required TResult Function(Moving value) moving,
  }) {
    return moving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Drawing value)? drawing,
    TResult? Function(Moving value)? moving,
  }) {
    return moving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Drawing value)? drawing,
    TResult Function(Moving value)? moving,
    required TResult orElse(),
  }) {
    if (moving != null) {
      return moving(this);
    }
    return orElse();
  }
}

abstract class Moving implements DrawBoardState {
  const factory Moving(
      {required final Board board,
      final Offset translation,
      final Offset focalPoint,
      final double scale,
      final Sketch? activeSketch,
      final Attributes selectedAttributes,
      final Map<String, void Function(Canvas, Sketch)>? painters}) = _$Moving;

  @override
  Board get board;
  @override
  Offset get translation;
  Offset get focalPoint;
  @override
  double get scale;
  @override
  Sketch? get activeSketch;
  @override
  Attributes get selectedAttributes;
  @override
  Map<String, void Function(Canvas, Sketch)>? get painters;
  @override
  @JsonKey(ignore: true)
  _$$MovingCopyWith<_$Moving> get copyWith =>
      throw _privateConstructorUsedError;
}
