import 'package:checkout_kata/discount_calc.dart';
import 'package:checkout_kata/model/product.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(DiscountCalc, () {
    test('should return the correct price without special price', () {
      const product = Product(id: 1, name: 'A', unitPrice: 10);
      final price = DiscountCalc.getPrice(product, 5);
      expect(price, 50);
    });

    test('should return the correct bulk discount price', () {
      const product = Product(
        id: 1,
        name: 'A',
        unitPrice: 10,
        specialPrice: SpecialPrice(
          description: '2 for £1.25',
          type: SpecialPriceType.bulkDiscount,
          quantity: 3,
          price: 25,
        ),
      );
      final price = DiscountCalc.getPrice(product, 6);
      expect(price, 50); // 2 groups of 3 at 25 each
    });

    test('should return the correct price for non-multiple bulk discount', () {
      const product = Product(
        id: 1,
        name: 'A',
        unitPrice: 10,
        specialPrice: SpecialPrice(
          description: '2 for £1.25',
          type: SpecialPriceType.bulkDiscount,
          quantity: 3,
          price: 25,
        ),
      );
      final price = DiscountCalc.getPrice(product, 7);
      expect(price, 60); // 2 groups of 3 at 25 each + 1 at 10
    });

    test('should return the correct buyXGetYFree price', () {
      const product = Product(
        id: 1,
        name: 'A',
        unitPrice: 10,
        specialPrice: SpecialPrice(
          description: 'Buy 3, get one free',
          type: SpecialPriceType.buyXGetYFree,
          buyQuantity: 3,
          freeQuantity: 1,
        ),
      );
      final price = DiscountCalc.getPrice(product, 6);
      expect(price, 40); // 4 paid, 2 free
    });

    test('returns correct price for buyXGetYFree with remainder', () {
      const product = Product(
        id: 1,
        name: 'A',
        unitPrice: 10,
        specialPrice: SpecialPrice(
          description: 'Buy 3, get one free',
          type: SpecialPriceType.buyXGetYFree,
          buyQuantity: 3,
          freeQuantity: 1,
        ),
      );
      final price = DiscountCalc.getPrice(product, 7);
      expect(price, 50); // 4 paid, 2 free, 1 extra paid
    });

    test('should return the correct bundle discount price', () {
      const products = [
        Product(
          id: 1,
          name: 'D',
          unitPrice: 30,
          specialPrice: SpecialPrice(
            description: 'Buy D and E for £3',
            type: SpecialPriceType.bundle,
            price: 50,
            bundleItems: ['D', 'E'],
          ),
        ),
        Product(
          id: 2,
          name: 'E',
          unitPrice: 30,
          specialPrice: SpecialPrice(
            description: 'Buy D and E for £3',
            type: SpecialPriceType.bundle,
            price: 50,
            bundleItems: ['D', 'E'],
          ),
        ),
      ];

      final cart = {1: 2, 2: 2}; // 2 D and 2 E

      final product = products[1]; // Product E with bundle discount

      final price = DiscountCalc.getBundleDiscount(products, cart, product, 2);
      expect(price, 50); // 2 bundles at 30 each
    });
  });
}
