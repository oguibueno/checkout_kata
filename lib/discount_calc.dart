import 'package:checkout_kata/model/product.dart';

class DiscountCalc {
  static int getPrice(Product product, int quantity) {
    switch (product.specialPrice?.type) {
      case SpecialPriceType.bulkDiscount:
        return _getBulkDiscount(product, quantity);
      case SpecialPriceType.buyXGetYFree:
        return _getFreeItemDiscount(product, quantity);
      case SpecialPriceType.bundle:
      default:
        return (product.unitPrice * quantity);
    }
  }

  static int _getBulkDiscount(Product product, int quantity) {
    final specialQuantity = product.specialPrice!.quantity!;
    final specialPrice = product.specialPrice!.price!;
    final unitPrice = product.unitPrice;

    int total = 0;

    final mod = quantity % specialQuantity;

    if (mod == 0) {
      final groups = quantity ~/ specialQuantity;
      total += groups * product.specialPrice!.price!;
    } else {
      final groups = quantity ~/ specialQuantity;
      final totalRemaining = unitPrice * mod;

      total += totalRemaining + groups * specialPrice;
    }

    return total;
  }

  static _getFreeItemDiscount(Product product, int quantity) {
    final buyQuantity = product.specialPrice!.buyQuantity!;
    final freeQuantity = product.specialPrice!.freeQuantity!;
    final unitPrice = product.unitPrice;

    int total = quantity * unitPrice;

    final groups = quantity ~/ buyQuantity;

    if (groups > 0) {
      final discount = groups * freeQuantity * unitPrice;
      total -= discount;
    }

    return total;
  }

  static getBundleDiscount(
    List<Product> products,
    Map<int, int> cart,
    Product product,
    int quantity,
  ) {
    final specialPrice = product.specialPrice!.price!;

    int total = 0;

    final dId = products.firstWhere((e) => e.name == 'D').id;
    final eId = products.firstWhere((e) => e.name == 'E').id;

    final dQuantity = cart.entries.where((e) => e.key == dId).length;
    final eQuantity = cart.entries.where((e) => e.key == eId).length;

    int pairedQuantity = dQuantity < eQuantity ? dQuantity : eQuantity;
    int remainingQuantityD = dQuantity - pairedQuantity;
    int remainingQuantityE = eQuantity - pairedQuantity;

    total += pairedQuantity * specialPrice;
    total += remainingQuantityD *
        (products.firstWhere((p) => p.name == 'D').unitPrice);
    total += remainingQuantityE *
        (products.firstWhere((p) => p.name == 'E').unitPrice);

    return total;
  }
}
