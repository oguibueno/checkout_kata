import 'package:checkout_kata/products_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const CheckoutKataApp());
}

class CheckoutKataApp extends StatelessWidget {
  const CheckoutKataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductsScreen(),
    );
  }
}
