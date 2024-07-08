import 'package:checkout_kata/discount_calc.dart';
import 'package:checkout_kata/model/product.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({
    super.key,
    required this.cart,
    required this.products,
  });

  final Map<int, int> cart;
  final List<Product> products;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Checkout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              itemCount: widget.cart.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "${_getProduct(index)?.name ?? ''} x ${widget.cart.values.elementAt(index)}",
                      style: _isBundle(widget.cart.keys.elementAt(index))
                          ? const TextStyle(
                              decoration: TextDecoration.lineThrough,
                            )
                          : null,
                    ),
                    if (_isBundle(widget.cart.keys.elementAt(index)))
                      Text(
                        DiscountCalc.getPrice(
                          _getProduct(index)!,
                          widget.cart.values.elementAt(index),
                        ).toString(),
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                    else
                      Text(
                        DiscountCalc.getPrice(
                          _getProduct(index)!,
                          widget.cart.values.elementAt(index),
                        ).toString(),
                      ),
                  ],
                );
              },
            ),
            if (_containsBundle())
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    _getBundledProducts().keys.first.toString(),
                  ),
                  Text(
                    _getBundledProducts().values.first.toString(),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }

  Product? _getProduct(int index) {
    return widget.products
        .where((e) => e.id == widget.cart.keys.elementAt(index))
        .firstOrNull;
  }

  bool _isBundle(int id) {
    return widget.products.any((e) =>
            e.specialPrice?.type == SpecialPriceType.bundle && e.id == id) &&
        _containsBundle();
  }

  bool _containsBundle() {
    final ids = widget.cart.keys.toList();
    return widget.products
            .where((e) =>
                e.specialPrice?.type == SpecialPriceType.bundle &&
                ids.contains(e.id))
            .length ==
        widget.products
            .where((e) => e.specialPrice?.type == SpecialPriceType.bundle)
            .length;
  }

  Map<String, int> _getBundledProducts() {
    var productNames = '';

    final ids = widget.cart.entries.map((e) => e.key).toList();
    final products = widget.products
        .where((e) =>
            e.specialPrice?.type == SpecialPriceType.bundle &&
            ids.contains(e.id))
        .toList();

    for (var e in products) {
      if (productNames.isEmpty) {
        productNames = e.name;
      } else {
        productNames += ' + ${e.name}';
      }
    }

    final quantity = widget.cart.values.reduce(
      (a, b) => a + b,
    );

    return {
      productNames: DiscountCalc.getBundleDiscount(
        widget.products,
        widget.cart,
        products.first,
        quantity,
      ),
    };
  }
}
