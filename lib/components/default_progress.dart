import 'package:flutter/material.dart';

class DefaultProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
      //child: Text("Buscando informações ..."),
    );
  }
}