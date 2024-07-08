import 'dart:convert';

import 'package:checkout_kata/checkout_screen.dart';
import 'package:checkout_kata/model/product.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<Product> _products = [];
  final Map<int, int> _cart = {};

  Future<Map> _loadProductsJson() async {
    try {
      final jsonString = await rootBundle.loadString('products.json');
      final data = jsonDecode(jsonString) as Map;
      return data;
    } catch (e) {
      print('Error loading the products json: $e');
    }
    return {};
  }

  List<dynamic> _getItems(Map<dynamic, dynamic> data) =>
      data.containsKey('items') ? data['items'] as List : [];

  List<Product> _getProducts(List<dynamic> items) =>
      List<Product>.from(items.map((e) => Product.fromJson(e)));

  Future<void> _loadProducts() async {
    try {
      final data = await _loadProductsJson();
      final items = _getItems(data);
      final products = _getProducts(items);

      if (products.isEmpty) return;

      setState(() {
        _products = products;
      });
    } catch (e) {
      print('Something went wrong: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  int _getTotalProducts(int id) {
    return _cart[id] ?? 0;
  }

  void _addToCart(int id) {
    setState(() {
      if (_cart.containsKey(id)) {
        _cart[id] = _cart[id]! + 1;
      } else {
        _cart[id] = 1;
      }
    });
  }

  void _removeFromCart(int id) {
    setState(() {
      if (_cart.containsKey(id) && _cart[id]! > 0) {
        _cart[id] = _cart[id]! - 1;
        if (_cart[id] == 0) {
          _cart.remove(id);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Products'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CheckoutScreen(
                      cart: _cart,
                      products: _products,
                    ),
                  ),
                );
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.shopping_cart_checkout,
                  ),
                  Text('Checkout'),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              itemCount: _products.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        "${_products[index].name} | ${_getTotalProducts(_products[index].id) > 0 ? "${_getTotalProducts(_products[index].id)}x" : ''}"),
                    Text(_products[index].unitPrice.toString()),
                    if (_getTotalProducts(_products[index].id) > 0)
                      IconButton(
                        onPressed: () => _removeFromCart(_products[index].id),
                        icon: const Icon(Icons.remove),
                      ),
                    Text(
                      _getTotalProducts(_products[index].id).toString(),
                    ),
                    IconButton(
                      onPressed: () => _addToCart(_products[index].id),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
