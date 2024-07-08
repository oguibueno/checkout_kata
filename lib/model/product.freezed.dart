// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialPrice _$SpecialPriceFromJson(Map<String, dynamic> json) {
  return _SpecialPrice.fromJson(json);
}

/// @nodoc
mixin _$SpecialPrice {
  String get description => throw _privateConstructorUsedError;
  SpecialPriceType get type => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'buy_quantity')
  int? get buyQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'free_quantity')
  int? get freeQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundle_items')
  List<String>? get bundleItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialPriceCopyWith<SpecialPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialPriceCopyWith<$Res> {
  factory $SpecialPriceCopyWith(
          SpecialPrice value, $Res Function(SpecialPrice) then) =
      _$SpecialPriceCopyWithImpl<$Res, SpecialPrice>;
  @useResult
  $Res call(
      {String description,
      SpecialPriceType type,
      int? price,
      int? quantity,
      @JsonKey(name: 'buy_quantity') int? buyQuantity,
      @JsonKey(name: 'free_quantity') int? freeQuantity,
      @JsonKey(name: 'bundle_items') List<String>? bundleItems});
}

/// @nodoc
class _$SpecialPriceCopyWithImpl<$Res, $Val extends SpecialPrice>
    implements $SpecialPriceCopyWith<$Res> {
  _$SpecialPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? type = null,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? buyQuantity = freezed,
    Object? freeQuantity = freezed,
    Object? bundleItems = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SpecialPriceType,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      buyQuantity: freezed == buyQuantity
          ? _value.buyQuantity
          : buyQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      freeQuantity: freezed == freeQuantity
          ? _value.freeQuantity
          : freeQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      bundleItems: freezed == bundleItems
          ? _value.bundleItems
          : bundleItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialPriceImplCopyWith<$Res>
    implements $SpecialPriceCopyWith<$Res> {
  factory _$$SpecialPriceImplCopyWith(
          _$SpecialPriceImpl value, $Res Function(_$SpecialPriceImpl) then) =
      __$$SpecialPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      SpecialPriceType type,
      int? price,
      int? quantity,
      @JsonKey(name: 'buy_quantity') int? buyQuantity,
      @JsonKey(name: 'free_quantity') int? freeQuantity,
      @JsonKey(name: 'bundle_items') List<String>? bundleItems});
}

/// @nodoc
class __$$SpecialPriceImplCopyWithImpl<$Res>
    extends _$SpecialPriceCopyWithImpl<$Res, _$SpecialPriceImpl>
    implements _$$SpecialPriceImplCopyWith<$Res> {
  __$$SpecialPriceImplCopyWithImpl(
      _$SpecialPriceImpl _value, $Res Function(_$SpecialPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? type = null,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? buyQuantity = freezed,
    Object? freeQuantity = freezed,
    Object? bundleItems = freezed,
  }) {
    return _then(_$SpecialPriceImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SpecialPriceType,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      buyQuantity: freezed == buyQuantity
          ? _value.buyQuantity
          : buyQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      freeQuantity: freezed == freeQuantity
          ? _value.freeQuantity
          : freeQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      bundleItems: freezed == bundleItems
          ? _value._bundleItems
          : bundleItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialPriceImpl with DiagnosticableTreeMixin implements _SpecialPrice {
  const _$SpecialPriceImpl(
      {required this.description,
      required this.type,
      this.price,
      this.quantity,
      @JsonKey(name: 'buy_quantity') this.buyQuantity,
      @JsonKey(name: 'free_quantity') this.freeQuantity,
      @JsonKey(name: 'bundle_items') final List<String>? bundleItems})
      : _bundleItems = bundleItems;

  factory _$SpecialPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialPriceImplFromJson(json);

  @override
  final String description;
  @override
  final SpecialPriceType type;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  @JsonKey(name: 'buy_quantity')
  final int? buyQuantity;
  @override
  @JsonKey(name: 'free_quantity')
  final int? freeQuantity;
  final List<String>? _bundleItems;
  @override
  @JsonKey(name: 'bundle_items')
  List<String>? get bundleItems {
    final value = _bundleItems;
    if (value == null) return null;
    if (_bundleItems is EqualUnmodifiableListView) return _bundleItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecialPrice(description: $description, type: $type, price: $price, quantity: $quantity, buyQuantity: $buyQuantity, freeQuantity: $freeQuantity, bundleItems: $bundleItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecialPrice'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('buyQuantity', buyQuantity))
      ..add(DiagnosticsProperty('freeQuantity', freeQuantity))
      ..add(DiagnosticsProperty('bundleItems', bundleItems));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialPriceImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.buyQuantity, buyQuantity) ||
                other.buyQuantity == buyQuantity) &&
            (identical(other.freeQuantity, freeQuantity) ||
                other.freeQuantity == freeQuantity) &&
            const DeepCollectionEquality()
                .equals(other._bundleItems, _bundleItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      type,
      price,
      quantity,
      buyQuantity,
      freeQuantity,
      const DeepCollectionEquality().hash(_bundleItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialPriceImplCopyWith<_$SpecialPriceImpl> get copyWith =>
      __$$SpecialPriceImplCopyWithImpl<_$SpecialPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialPriceImplToJson(
      this,
    );
  }
}

abstract class _SpecialPrice implements SpecialPrice {
  const factory _SpecialPrice(
          {required final String description,
          required final SpecialPriceType type,
          final int? price,
          final int? quantity,
          @JsonKey(name: 'buy_quantity') final int? buyQuantity,
          @JsonKey(name: 'free_quantity') final int? freeQuantity,
          @JsonKey(name: 'bundle_items') final List<String>? bundleItems}) =
      _$SpecialPriceImpl;

  factory _SpecialPrice.fromJson(Map<String, dynamic> json) =
      _$SpecialPriceImpl.fromJson;

  @override
  String get description;
  @override
  SpecialPriceType get type;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  @JsonKey(name: 'buy_quantity')
  int? get buyQuantity;
  @override
  @JsonKey(name: 'free_quantity')
  int? get freeQuantity;
  @override
  @JsonKey(name: 'bundle_items')
  List<String>? get bundleItems;
  @override
  @JsonKey(ignore: true)
  _$$SpecialPriceImplCopyWith<_$SpecialPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  int get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_price')
  SpecialPrice? get specialPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'unit_price') int unitPrice,
      @JsonKey(name: 'special_price') SpecialPrice? specialPrice});

  $SpecialPriceCopyWith<$Res>? get specialPrice;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unitPrice = null,
    Object? specialPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      specialPrice: freezed == specialPrice
          ? _value.specialPrice
          : specialPrice // ignore: cast_nullable_to_non_nullable
              as SpecialPrice?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecialPriceCopyWith<$Res>? get specialPrice {
    if (_value.specialPrice == null) {
      return null;
    }

    return $SpecialPriceCopyWith<$Res>(_value.specialPrice!, (value) {
      return _then(_value.copyWith(specialPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'unit_price') int unitPrice,
      @JsonKey(name: 'special_price') SpecialPrice? specialPrice});

  @override
  $SpecialPriceCopyWith<$Res>? get specialPrice;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unitPrice = null,
    Object? specialPrice = freezed,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      specialPrice: freezed == specialPrice
          ? _value.specialPrice
          : specialPrice // ignore: cast_nullable_to_non_nullable
              as SpecialPrice?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl with DiagnosticableTreeMixin implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      @JsonKey(name: 'special_price') this.specialPrice});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'unit_price')
  final int unitPrice;
  @override
  @JsonKey(name: 'special_price')
  final SpecialPrice? specialPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(id: $id, name: $name, unitPrice: $unitPrice, specialPrice: $specialPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('unitPrice', unitPrice))
      ..add(DiagnosticsProperty('specialPrice', specialPrice));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.specialPrice, specialPrice) ||
                other.specialPrice == specialPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, unitPrice, specialPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
          {required final int id,
          required final String name,
          @JsonKey(name: 'unit_price') required final int unitPrice,
          @JsonKey(name: 'special_price') final SpecialPrice? specialPrice}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'unit_price')
  int get unitPrice;
  @override
  @JsonKey(name: 'special_price')
  SpecialPrice? get specialPrice;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
