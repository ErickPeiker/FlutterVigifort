import 'package:flutter/material.dart';
import 'package:myapp/components/default_header.dart';
import 'package:myapp/model/terceiro.dart';

class TerceiroForm extends StatelessWidget {

	Terceiro terceiro;

	TerceiroForm(
		this.terceiro
	);

	final _formKey = GlobalKey<FormState>();

	@override
	Widget build(BuildContext context) {
		return DefaultHeader(
			"Cadastro de terceiros",
			_body()
		);
	}

	_body() {

	  return Form(
	  		key: _formKey,
	  		child: Padding(
	  			padding: EdgeInsets.all(16),
	  			child: Column(
	  				children: [
						  Text("Nome: ${terceiro.nome}"),
						  Text("CPF: ${terceiro.cpf}"),
	  				]
	  			)
	  		)
	  	);
	}
}