import 'package:flutter/material.dart';
import 'package:myapp/components/default_button.dart';
import 'package:myapp/components/default_header.dart';

class Evento extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultHeader ( 'Eventos', _body());
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DefaultButton("+", _testeClick),
          DefaultButton("-", _testeClick),
          Text(
            'Um texto qualquer',
          ),
        ],
      ),
    );
  }

  _testeClick() {
    print('Algum botão foi clicado');
  }
}