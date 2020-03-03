import 'package:flutter/material.dart';
import 'package:myapp/components/default_alert.dart';
import 'package:myapp/components/default_button.dart';
import 'package:myapp/components/default_form_field.dart';
import 'package:myapp/pages/login/login_bloc.dart';
import 'package:myapp/pages/terceiro/terceiro_page.dart';
import 'package:myapp/utils/apiResponse.dart';
import 'package:myapp/utils/nav.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
	final _bloc = LoginBloc();

  	final _formKey = GlobalKey<FormState>();
  	final _tEmail = TextEditingController();
  	final _tSenha = TextEditingController();

  @override
  void initState() {
    super.initState();
  }  
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
              DefaultFormField(
                "E-mail",
                "Ex: usuario@mail.com",
                tcController: _tEmail,
                validator: _validateEmail,
                keyBoardType: TextInputType.emailAddress,
              ),
            DefaultFormField(
              "Senha",
              "Informe a senha",
              senha: true,
              tcController: _tSenha,
              validator: _validateSenha,
            ),
            StreamBuilder<bool>(
              stream: _bloc.stream,
			  initialData: false,
              builder: (context, snapshot) {
                return DefaultButton(
                    "Entrar", _onClickLogin, 
                    showProgress: snapshot.data, 
                    type: 1
                );
              }
            ),
          ]
        ),
      )
    );
}

void _onClickLogin() async {
	bool formOk = _formKey.currentState.validate();

	if (!formOk) {
		return;
	}

	String email = _tEmail.text;
	String senha = _tSenha.text;

	ApiResponse response = await _bloc.login(email, senha);
	if (response.ok) {
		push(context, TerceiroPage(), replace: true);
	} else {
		alert(context, "Login", response.msg);
	}
}

  String _validateEmail(String text) {
    if (text.isEmpty) {
      return "Insira seu e-mail";
    }
    return null;
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Insira sua senha";
    }
    return null;
  }

	@override
	void dispose() {
		super.dispose();
		_bloc.dispose();
	}

}
