import 'package:flutter/material.dart';
import 'package:myapp/components/default_button.dart';
import 'package:myapp/model/terceiro.dart';
import 'package:myapp/pages/terceiro/terceiro_form.dart';
import 'package:myapp/utils/nav.dart';

class TerceiroCard extends StatelessWidget {

	String fotoPerfil;
	Terceiro terceiro;
	int telefone;

	TerceiroCard({
		@required this.fotoPerfil,
		@required this.terceiro,
		@required this.telefone,
	});

  	@override
  	Widget build(BuildContext context) {
		return Card(
			color: Colors.grey[100],
			child: Container(
			padding: EdgeInsets.all(12),
				child: Column(
					children: <Widget>[
						Image.network(fotoPerfil, width: 120,),
						Text("${terceiro.nome} (${terceiro.cpf})", style: TextStyle(fontSize: 22) ),
						Text("$telefone", style: TextStyle(fontSize: 14) ),
						ButtonBar(
							children: <Widget>[
								DefaultButton("Editar", (){
									push(context, TerceiroForm(terceiro));
								}),
								DefaultButton("Desativar", (){}, type: 2),
							],
						),
						Divider(color: Colors.black,),
					],
			),
			),
		);
  	}
}