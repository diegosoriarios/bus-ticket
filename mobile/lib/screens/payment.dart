import 'package:buybus/utils/data.dart';
import 'package:buybus/utils/payment.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  PaymentState createState() => PaymentState();
}

class PaymentState extends State<Payment> {
  var total = 0.0;
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Card(
              color: Theme.of(context).primaryColor,
              child: Text("Saldo: R\$" + value.toString()),
            ),
            TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "Quantidade"),
              onChanged: (text) {
                _textFieldController.text = text;
                setState(() {
                  total = preco * int.parse(_textFieldController.text);
                });
              },
            ),
            Text("Total: " + total.toString()),
            FlatButton(
              child: Text("Pagar"),
              onPressed: () {
                qtdpassagem += int.parse(_textFieldController.text);
              },
            )
          ],
        )
      )
    );
  }
}