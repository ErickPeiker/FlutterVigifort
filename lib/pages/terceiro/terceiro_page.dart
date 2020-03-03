import 'package:flutter/material.dart';
import 'package:myapp/components/default_header.dart';
import 'package:myapp/model/terceiro.dart';
import 'package:myapp/pages/terceiro/terceiro_form.dart';
import 'package:myapp/pages/terceiro/terceiro_form_filter.dart';
import 'package:myapp/pages/terceiro/terceiro_list.dart';
import 'package:myapp/utils/nav.dart';

class TerceiroPage extends StatefulWidget {
  @override
  _TerceiroPageState createState() => _TerceiroPageState();
}

class _TerceiroPageState extends State<TerceiroPage> {
  
  	@override
  	void initState() {
		super.initState();
  	}

  @override
  Widget build(BuildContext context) {
		return DefaultHeader(
			"Terceiros",
			_body(),
			buttons: _buttonsAppBar(),
		);
  }

  List<Widget> _buttonsAppBar() {
    return [
      FlatButton.icon(
        onPressed: () {
          push(context, TerceiroForm(new Terceiro()));
        },
        icon: Icon(Icons.add,),
        label: Text("Cadastrar novo terceiro"),
        color: Colors.white,
      )
    ];
  }

    _body() {
		return SingleChildScrollView(
			child: ConstrainedBox(
				constraints: BoxConstraints(),
				child: Column(
					children: <Widget>[
						TerceiroFormFilter(),
						TerceiroList("", "", "Todos", "Todos"),
					],
				)
			)
		);
    }
  
}