import 'package:conversor_moedas/app/models/currency.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  List<Currency> currencies;
  Currency fromCurrency;
  Currency toCurrency;

  TextEditingController toText;
  TextEditingController fromText;

  HomeController(this.toText, this.fromText) {
    currencies = Currency.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[2];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(",", ".")) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
