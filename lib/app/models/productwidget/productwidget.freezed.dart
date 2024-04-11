// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productwidget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductWidget _$ProductWidgetFromJson(Map<String, dynamic> json) {
  return _ProductWidget.fromJson(json);
}

/// @nodoc
mixin _$ProductWidget {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWidgetCopyWith<$Res> {
  factory $ProductWidgetCopyWith(
          ProductWidget value, $Res Function(ProductWidget) then) =
      _$ProductWidgetCopyWithImpl<$Res, ProductWidget>;
}

/// @nodoc
class _$ProductWidgetCopyWithImpl<$Res, $Val extends ProductWidget>
    implements $ProductWidgetCopyWith<$Res> {
  _$ProductWidgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductWidgetImplCopyWith<$Res> {
  factory _$$ProductWidgetImplCopyWith(
          _$ProductWidgetImpl value, $Res Function(_$ProductWidgetImpl) then) =
      __$$ProductWidgetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductWidgetImplCopyWithImpl<$Res>
    extends _$ProductWidgetCopyWithImpl<$Res, _$ProductWidgetImpl>
    implements _$$ProductWidgetImplCopyWith<$Res> {
  __$$ProductWidgetImplCopyWithImpl(
      _$ProductWidgetImpl _value, $Res Function(_$ProductWidgetImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ProductWidgetImpl implements _ProductWidget {
  _$ProductWidgetImpl();

  factory _$ProductWidgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductWidgetImplFromJson(json);

  @override
  String toString() {
    return 'ProductWidget()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductWidgetImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductWidgetImplToJson(
      this,
    );
  }
}

abstract class _ProductWidget implements ProductWidget {
  factory _ProductWidget() = _$ProductWidgetImpl;

  factory _ProductWidget.fromJson(Map<String, dynamic> json) =
      _$ProductWidgetImpl.fromJson;
}
