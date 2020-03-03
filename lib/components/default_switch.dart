import 'package:flutter/material.dart';

class DefaultSwith extends StatelessWidget {
    String title;
    bool value;
    Function onChanged;

    DefaultSwith({
      @required this.title,
      @required this.value,
      @required this.onChanged,
    });

    @override
    Widget build(BuildContext context) {
      return SwitchListTile(
        title: Text(
			title
        ),
        value: value,
        onChanged: onChanged,
      );
    }
}