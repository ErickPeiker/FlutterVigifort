import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  String label;
  String hint;
  bool senha;
  TextEditingController tcController;
  FormFieldValidator<String> validator;
  TextInputType keyBoardType;

  DefaultFormField(this.label, this.hint,
      {this.senha = false, this.tcController, this.validator, this.keyBoardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: TextFormField(
            controller: tcController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: label,
                hintText: hint,
                labelStyle: TextStyle(
                  fontSize: 24,
                ),
                hintStyle: TextStyle(
                  fontSize: 12,
                )),
            obscureText: senha,
            validator: validator,
            keyboardType: keyBoardType,
        )
    );
  }
}
