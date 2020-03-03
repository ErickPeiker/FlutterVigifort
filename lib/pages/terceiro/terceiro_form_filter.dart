import 'package:flutter/material.dart';
import 'package:myapp/components/default_DropdownButton.dart';
import 'package:myapp/components/default_button.dart';
import 'package:myapp/components/default_form_field.dart';

class TerceiroFormFilter extends StatefulWidget {
  @override
  _TerceiroFormFilterState createState() => _TerceiroFormFilterState();
}

class _TerceiroFormFilterState extends State<TerceiroFormFilter> {

	final _formKey = GlobalKey<FormState>();
	var _tFilterNome;
	var _tFilterCpf;
	var _showCursosVencidos = "Todos";
	var _showGrandesEventos = "Todos";

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
						"Nome",
						"Ex: Insira o nome do terceiro para encontrar na pesquisa",
						tcController: _tFilterNome,
					),
					DefaultFormField (
						"CPF",
						"Ex: Insira o CPF do terceiro para encontrar na pesquisa",
						tcController: _tFilterCpf,
					),
					DefaultDropdown(
					),
					DefaultDropdown(
					),
					ButtonBar(
						alignment: MainAxisAlignment.center,
						children: <Widget>[
							DefaultButton("Pesquisar", () {}, type: 1,),
							DefaultButton("Limpar filtros", () {}),
						],
					),
					
				]
			)
		)
		);
	}

	void _onShowCursosVencidos(value) {
    	setState(() {
      		_showCursosVencidos = value;
    	});
  	}

	void _onShowGrandesEventos(value) {
	 	setState(() {
			_showGrandesEventos = value;
	 	});
	}

	@override
	void dispose() {
		super.dispose();
	}

}