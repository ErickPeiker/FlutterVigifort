import 'package:flutter/material.dart';
import 'package:myapp/pages/login/login_form.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body());
  }

  _img() {
    return Image(
      image: AssetImage("assets/images/logo.jpg"),
      width: 300,
      height: 200,
    );
  }

  _body() {
    return Container(
        child: ListView(
          children: [
            _img(),
            LoginForm(),
        ]
      )
    );
  }
}
