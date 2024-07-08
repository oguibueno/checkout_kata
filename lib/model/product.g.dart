// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialPriceImpl _$$SpecialPriceImplFromJson(Map<String, dynamic> json) =>
    _$SpecialPriceImpl(
      description: json['description'] as String,
      type: $enumDecode(_$SpecialPriceTypeEnumMap, json['type']),
      price: (json['price'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      buyQuantity: (json['buy_quantity'] as num?)?.toInt(),
      freeQuantity: (json['free_quantity'] as num?)?.toInt(),
      bundleItems: (json['bundle_items'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SpecialPriceImplToJson(_$SpecialPriceImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'type': _$SpecialPriceTypeEnumMap[instance.type]!,
      'price': instance.price,
      'quantity': instance.quantity,
      'buy_quantity': instance.buyQuantity,
      'free_quantity': instance.freeQuantity,
      'bundle_items': instance.bundleItems,
    };

const _$SpecialPriceTypeEnumMap = {
  SpecialPriceType.bulkDiscount: 'bulk_discount',
  SpecialPriceType.buyXGetYFree: 'buy_x_get_y_free',
  SpecialPriceType.bundle: 'bundle',
};

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      unitPrice: (json['unit_price'] as num).toInt(),
      specialPrice: json['special_price'] == null
          ? null
          : SpecialPrice.fromJson(
              json['special_price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit_price': instance.unitPrice,
      'special_price': instance.specialPrice,
    };
