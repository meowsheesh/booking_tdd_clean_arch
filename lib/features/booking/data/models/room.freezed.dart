// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
mixin _$RoomModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get pricePer => throw _privateConstructorUsedError;
  List<String>? get peculiarities => throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res, RoomModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      String? pricePer,
      List<String>? peculiarities,
      List<String>? imageUrls});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res, $Val extends RoomModel>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? pricePer = freezed,
    Object? peculiarities = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      pricePer: freezed == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String?,
      peculiarities: freezed == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$$_RoomModelCopyWith(
          _$_RoomModel value, $Res Function(_$_RoomModel) then) =
      __$$_RoomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      String? pricePer,
      List<String>? peculiarities,
      List<String>? imageUrls});
}

/// @nodoc
class __$$_RoomModelCopyWithImpl<$Res>
    extends _$RoomModelCopyWithImpl<$Res, _$_RoomModel>
    implements _$$_RoomModelCopyWith<$Res> {
  __$$_RoomModelCopyWithImpl(
      _$_RoomModel _value, $Res Function(_$_RoomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? pricePer = freezed,
    Object? peculiarities = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_$_RoomModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      pricePer: freezed == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String?,
      peculiarities: freezed == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageUrls: freezed == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomModel implements _RoomModel {
  _$_RoomModel(
      {this.id,
      this.name,
      this.price,
      this.pricePer,
      final List<String>? peculiarities,
      final List<String>? imageUrls})
      : _peculiarities = peculiarities,
        _imageUrls = imageUrls;

  factory _$_RoomModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoomModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final String? pricePer;
  final List<String>? _peculiarities;
  @override
  List<String>? get peculiarities {
    final value = _peculiarities;
    if (value == null) return null;
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _imageUrls;
  @override
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomModelCopyWith<_$_RoomModel> get copyWith =>
      __$$_RoomModelCopyWithImpl<_$_RoomModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomModelToJson(
      this,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

abstract class _RoomModel implements RoomModel {
  factory _RoomModel(
      {final int? id,
      final String? name,
      final int? price,
      final String? pricePer,
      final List<String>? peculiarities,
      final List<String>? imageUrls}) = _$_RoomModel;

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$_RoomModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  String? get pricePer;
  @override
  List<String>? get peculiarities;
  @override
  List<String>? get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$_RoomModelCopyWith<_$_RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
