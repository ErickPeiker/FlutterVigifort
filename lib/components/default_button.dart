import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/default_progress.dart';

class DefaultButton extends StatelessWidget {
  String text;
  Function onPressed;
  bool showProgress;
  int type;

  DefaultButton(this.text, this.onPressed, {this.showProgress = false, this.type});

	@override
	Widget build(BuildContext context) {
		return _typeButton(type);
	}

  	_typeButton(typeButton) {
		if (typeButton == 1) {
			return RaisedButton(
				color: Colors.greenAccent,
				child: showProgress ? 
					DefaultProgress() :  
					Text(
					text,
					style: TextStyle(
						color: Colors.black,
						fontSize: 20,
					),
					),
				onPressed: onPressed,
			);
		} else if (typeButton == 2) {
			return RaisedButton(
				color: Colors.redAccent,
				child: showProgress ? 
					DefaultProgress() :  
					Text(
					text,
					style: TextStyle(
						color: Colors.white,
						fontSize: 16,
					),
					),
				onPressed: onPressed,
			);
		}  else if (typeButton == 3) {
			return RaisedButton(
				color: Colors.grey,
				child: showProgress ? 
					DefaultProgress() :  
					Text(
					text,
					style: TextStyle(
						color: Colors.white,
						fontSize: 16,
					),
					),
				onPressed: onPressed,
			);
		} else {
			return RaisedButton(
				color: Colors.grey,
				child: showProgress ? 
					DefaultProgress() :  
					Text(
					text,
					style: TextStyle(
						color: Colors.black,
						fontSize: 16,
					),
					),
				onPressed: onPressed,
			);
		}
  	}
}
