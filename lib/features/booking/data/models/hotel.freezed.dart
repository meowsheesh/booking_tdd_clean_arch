// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  int? get minimalPrice => throw _privateConstructorUsedError;
  String? get priceForIt => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get rating_Name => throw _privateConstructorUsedError;
  List<String>? get image_Urls => throw _privateConstructorUsedError;
  @JsonKey(name: 'about_the_hotel')
  AboutHotel? get aboutTheHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? adress,
      int? minimalPrice,
      String? priceForIt,
      int? rating,
      String? rating_Name,
      List<String>? image_Urls,
      @JsonKey(name: 'about_the_hotel') AboutHotel? aboutTheHotel});

  $AboutHotelCopyWith<$Res>? get aboutTheHotel;
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? adress = freezed,
    Object? minimalPrice = freezed,
    Object? priceForIt = freezed,
    Object? rating = freezed,
    Object? rating_Name = freezed,
    Object? image_Urls = freezed,
    Object? aboutTheHotel = freezed,
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
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      minimalPrice: freezed == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      priceForIt: freezed == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      rating_Name: freezed == rating_Name
          ? _value.rating_Name
          : rating_Name // ignore: cast_nullable_to_non_nullable
              as String?,
      image_Urls: freezed == image_Urls
          ? _value.image_Urls
          : image_Urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aboutTheHotel: freezed == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutHotelCopyWith<$Res>? get aboutTheHotel {
    if (_value.aboutTheHotel == null) {
      return null;
    }

    return $AboutHotelCopyWith<$Res>(_value.aboutTheHotel!, (value) {
      return _then(_value.copyWith(aboutTheHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HotelModelCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$_HotelModelCopyWith(
          _$_HotelModel value, $Res Function(_$_HotelModel) then) =
      __$$_HotelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? adress,
      int? minimalPrice,
      String? priceForIt,
      int? rating,
      String? rating_Name,
      List<String>? image_Urls,
      @JsonKey(name: 'about_the_hotel') AboutHotel? aboutTheHotel});

  @override
  $AboutHotelCopyWith<$Res>? get aboutTheHotel;
}

/// @nodoc
class __$$_HotelModelCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$_HotelModel>
    implements _$$_HotelModelCopyWith<$Res> {
  __$$_HotelModelCopyWithImpl(
      _$_HotelModel _value, $Res Function(_$_HotelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? adress = freezed,
    Object? minimalPrice = freezed,
    Object? priceForIt = freezed,
    Object? rating = freezed,
    Object? rating_Name = freezed,
    Object? image_Urls = freezed,
    Object? aboutTheHotel = freezed,
  }) {
    return _then(_$_HotelModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      minimalPrice: freezed == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      priceForIt: freezed == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      rating_Name: freezed == rating_Name
          ? _value.rating_Name
          : rating_Name // ignore: cast_nullable_to_non_nullable
              as String?,
      image_Urls: freezed == image_Urls
          ? _value._image_Urls
          : image_Urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aboutTheHotel: freezed == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelModel implements _HotelModel {
  _$_HotelModel(
      {this.id,
      this.name,
      this.adress,
      this.minimalPrice,
      this.priceForIt,
      this.rating,
      this.rating_Name,
      final List<String>? image_Urls,
      @JsonKey(name: 'about_the_hotel') this.aboutTheHotel})
      : _image_Urls = image_Urls;

  factory _$_HotelModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? adress;
  @override
  final int? minimalPrice;
  @override
  final String? priceForIt;
  @override
  final int? rating;
  @override
  final String? rating_Name;
  final List<String>? _image_Urls;
  @override
  List<String>? get image_Urls {
    final value = _image_Urls;
    if (value == null) return null;
    if (_image_Urls is EqualUnmodifiableListView) return _image_Urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'about_the_hotel')
  final AboutHotel? aboutTheHotel;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelModelCopyWith<_$_HotelModel> get copyWith =>
      __$$_HotelModelCopyWithImpl<_$_HotelModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelModelToJson(
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

abstract class _HotelModel implements HotelModel {
  factory _HotelModel(
          {final int? id,
          final String? name,
          final String? adress,
          final int? minimalPrice,
          final String? priceForIt,
          final int? rating,
          final String? rating_Name,
          final List<String>? image_Urls,
          @JsonKey(name: 'about_the_hotel') final AboutHotel? aboutTheHotel}) =
      _$_HotelModel;

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$_HotelModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get adress;
  @override
  int? get minimalPrice;
  @override
  String? get priceForIt;
  @override
  int? get rating;
  @override
  String? get rating_Name;
  @override
  List<String>? get image_Urls;
  @override
  @JsonKey(name: 'about_the_hotel')
  AboutHotel? get aboutTheHotel;
  @override
  @JsonKey(ignore: true)
  _$$_HotelModelCopyWith<_$_HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutHotel _$AboutHotelFromJson(Map<String, dynamic> json) {
  return _AboutHotel.fromJson(json);
}

/// @nodoc
mixin _$AboutHotel {
  String? get description => throw _privateConstructorUsedError;
  List<String>? get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutHotelCopyWith<AboutHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutHotelCopyWith<$Res> {
  factory $AboutHotelCopyWith(
          AboutHotel value, $Res Function(AboutHotel) then) =
      _$AboutHotelCopyWithImpl<$Res, AboutHotel>;
  @useResult
  $Res call({String? description, List<String>? peculiarities});
}

/// @nodoc
class _$AboutHotelCopyWithImpl<$Res, $Val extends AboutHotel>
    implements $AboutHotelCopyWith<$Res> {
  _$AboutHotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? peculiarities = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      peculiarities: freezed == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AboutHotelCopyWith<$Res>
    implements $AboutHotelCopyWith<$Res> {
  factory _$$_AboutHotelCopyWith(
          _$_AboutHotel value, $Res Function(_$_AboutHotel) then) =
      __$$_AboutHotelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, List<String>? peculiarities});
}

/// @nodoc
class __$$_AboutHotelCopyWithImpl<$Res>
    extends _$AboutHotelCopyWithImpl<$Res, _$_AboutHotel>
    implements _$$_AboutHotelCopyWith<$Res> {
  __$$_AboutHotelCopyWithImpl(
      _$_AboutHotel _value, $Res Function(_$_AboutHotel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? peculiarities = freezed,
  }) {
    return _then(_$_AboutHotel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      peculiarities: freezed == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutHotel implements _AboutHotel {
  _$_AboutHotel({this.description, final List<String>? peculiarities})
      : _peculiarities = peculiarities;

  factory _$_AboutHotel.fromJson(Map<String, dynamic> json) =>
      _$$_AboutHotelFromJson(json);

  @override
  final String? description;
  final List<String>? _peculiarities;
  @override
  List<String>? get peculiarities {
    final value = _peculiarities;
    if (value == null) return null;
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AboutHotel(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutHotel &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutHotelCopyWith<_$_AboutHotel> get copyWith =>
      __$$_AboutHotelCopyWithImpl<_$_AboutHotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutHotelToJson(
      this,
    );
  }
}

abstract class _AboutHotel implements AboutHotel {
  factory _AboutHotel(
      {final String? description,
      final List<String>? peculiarities}) = _$_AboutHotel;

  factory _AboutHotel.fromJson(Map<String, dynamic> json) =
      _$_AboutHotel.fromJson;

  @override
  String? get description;
  @override
  List<String>? get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$_AboutHotelCopyWith<_$_AboutHotel> get copyWith =>
      throw _privateConstructorUsedError;
}
