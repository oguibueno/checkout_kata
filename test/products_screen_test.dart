import 'package:checkout_kata/checkout_screen.dart';
import 'package:checkout_kata/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should display the products', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ProductsScreen(),
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pumpAndSettle();

    for (var i = 1; i <= 5; i++) {
      expect(find.byKey(Key('product_$i')), findsOneWidget);
    }
  });

  testWidgets('Should navigate to checkout', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ProductsScreen(),
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('checkout_screen_button')));

    await tester.pumpAndSettle();

    expect(find.byType(CheckoutScreen), findsOneWidget);
  });
}
