import 'package:flutter/material.dart';
import 'package:myapp/components/default_drawer.dart';

class DefaultHeader extends StatelessWidget {
  String title;
  Widget body;
  List<Widget> buttons;

  DefaultHeader(this.title, this.body, {this.buttons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          actions: buttons,
        ),
        body: body,
        drawer: DefaultDrawer(),
        );
  }
}