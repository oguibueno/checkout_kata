// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

enum SpecialPriceType {
  @JsonValue('bulk_discount')
  bulkDiscount,
  @JsonValue('buy_x_get_y_free')
  buyXGetYFree,
  @JsonValue('bundle')
  bundle,
}

@freezed
class SpecialPrice with _$SpecialPrice {
  const factory SpecialPrice({
    required String description,
    required SpecialPriceType type,
    int? price,
    int? quantity,
    @JsonKey(name: 'buy_quantity') int? buyQuantity,
    @JsonKey(name: 'free_quantity') int? freeQuantity,
    @JsonKey(name: 'bundle_items') List<String>? bundleItems,
  }) = _SpecialPrice;

  factory SpecialPrice.fromJson(Map<String, dynamic> json) =>
      _$SpecialPriceFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    @JsonKey(name: 'unit_price') required int unitPrice,
    @JsonKey(name: 'special_price') SpecialPrice? specialPrice,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
