import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
              child: Column(children: [
                Image.asset('images/money-exchange.jpg',
                    width: 150, height: 150),
                SizedBox(height: 50),
                CurrencyBox(),
                SizedBox(height: 10),
                CurrencyBox(),
                SizedBox(height: 40),
                RaisedButton(
                  color: Colors.amber,
                  onPressed: () {},
                  child: Text('CONVERTER'),
                )
              ]),
            )));
  }
}
