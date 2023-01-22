// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sketch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sketch _$SketchFromJson(Map<String, dynamic> json) {
  return _Sketch.fromJson(json);
}

/// @nodoc
mixin _$Sketch {
  String get name => throw _privateConstructorUsedError;
  List<Point> get points => throw _privateConstructorUsedError;
  Attributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SketchCopyWith<Sketch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SketchCopyWith<$Res> {
  factory $SketchCopyWith(Sketch value, $Res Function(Sketch) then) =
      _$SketchCopyWithImpl<$Res, Sketch>;
  @useResult
  $Res call({String name, List<Point> points, Attributes attributes});

  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$SketchCopyWithImpl<$Res, $Val extends Sketch>
    implements $SketchCopyWith<$Res> {
  _$SketchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? points = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res> get attributes {
    return $AttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SketchCopyWith<$Res> implements $SketchCopyWith<$Res> {
  factory _$$_SketchCopyWith(_$_Sketch value, $Res Function(_$_Sketch) then) =
      __$$_SketchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Point> points, Attributes attributes});

  @override
  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_SketchCopyWithImpl<$Res>
    extends _$SketchCopyWithImpl<$Res, _$_Sketch>
    implements _$$_SketchCopyWith<$Res> {
  __$$_SketchCopyWithImpl(_$_Sketch _value, $Res Function(_$_Sketch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? points = null,
    Object? attributes = null,
  }) {
    return _then(_$_Sketch(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sketch implements _Sketch {
  const _$_Sketch(
      {required this.name,
      required final List<Point> points,
      this.attributes = const Attributes.initial()})
      : _points = points;

  factory _$_Sketch.fromJson(Map<String, dynamic> json) =>
      _$$_SketchFromJson(json);

  @override
  final String name;
  final List<Point> _points;
  @override
  List<Point> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @JsonKey()
  final Attributes attributes;

  @override
  String toString() {
    return 'Sketch(name: $name, points: $points, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sketch &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_points), attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SketchCopyWith<_$_Sketch> get copyWith =>
      __$$_SketchCopyWithImpl<_$_Sketch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SketchToJson(
      this,
    );
  }
}

abstract class _Sketch implements Sketch {
  const factory _Sketch(
      {required final String name,
      required final List<Point> points,
      final Attributes attributes}) = _$_Sketch;

  factory _Sketch.fromJson(Map<String, dynamic> json) = _$_Sketch.fromJson;

  @override
  String get name;
  @override
  List<Point> get points;
  @override
  Attributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_SketchCopyWith<_$_Sketch> get copyWith =>
      throw _privateConstructorUsedError;
}
