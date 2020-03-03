import 'package:flutter/material.dart';

class DefaultDropdown extends StatefulWidget {
	@override
  	DefaultDropdownState createState() => DefaultDropdownState();
}

class DefaultDropdownState extends State<DefaultDropdown> {

	var _value = "0";

	@override
	Widget build(BuildContext context) {
		return DropdownButton<String>(
			items: [
				DropdownMenuItem(
					value: "0",
					child: Text(
						"Todos",
					),
				),
				DropdownMenuItem(
					value: "1",
					child: Text(
						"Sim",
					),
				),
				DropdownMenuItem(
					value: "2",
					child: Text(
						"Não",
					),
				),
			],
			onChanged: (value) {
				setState(() {
					_value = value;
				});
			},
			value: _value,
			hint: Text("Selecione"),
          	style: TextStyle(
            	color: Colors.black,
          	),
		);
}

  
}