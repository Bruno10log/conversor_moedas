import 'package:conversor_moedas/app/controllers/home.dart';
import 'package:conversor_moedas/app/models/currency.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText, fromText);

  test('deve converter de real para euro', () {
    toText.text = "2.0";
    homeController.convert();
    expect(fromText.text, '0.30');
  });

  test('deve converter de euro para real', () {
    toText.text = "1.0";
    homeController.toCurrency = Currency.getCurrencies()[2];
    homeController.fromCurrency = Currency.getCurrencies()[0];
    homeController.convert();
    expect(fromText.text, '6.62');
  });
}
