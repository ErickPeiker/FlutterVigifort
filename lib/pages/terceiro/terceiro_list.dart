import 'package:flutter/material.dart';
import 'package:myapp/components/default_progress.dart';
import 'package:myapp/model/terceiro.dart';
import 'package:myapp/pages/terceiro/terceiro_bloc.dart';
import 'package:myapp/pages/terceiro/terceiro_card.dart';

class TerceiroList extends StatefulWidget {
	String nome;
	String cpf;
	String cursoVencido;
	String grandesEventos;

	TerceiroList(this.nome, this.cpf, this.cursoVencido, this.grandesEventos);

  @override
  _TerceiroListState createState() => _TerceiroListState();
}

class _TerceiroListState extends State<TerceiroList> {
	final _bloc = TerceiroBloc();
	String get nome => widget.nome;
	String get cpf => widget.cpf;
	String get cursoVencido => widget.cursoVencido;
	String get grandesEventos => widget.grandesEventos;
	
	List<Terceiro> terceiros;
	
	@override
	void initState() {
		super.initState();
		_bloc.loadTerceiros(nome, cpf, cursoVencido, grandesEventos);
	}	

  @override
  Widget build(BuildContext context) {
    try{
      return Container(
        child: StreamBuilder(
          stream: _bloc.stream,
          builder: (context, snapshot) {
			  if (snapshot.hasError) {
				  return Center(
					  child: Text("Não foi possível buscas os terceiros",
					  style: TextStyle(
						  color: Colors.red,
						  fontSize: 22
					  )),
				  );
			  }
            
            if (!snapshot.hasData) {
            	return DefaultProgress();
            }

            List<Terceiro> responseTerceiros = snapshot.data;
            return _listView(responseTerceiros);
          },
        )
      );
    } catch(error, exception) {
      print(">> $error > $exception");
      return null;
    }
  }

   	_listView(List<Terceiro> terceiros) {
    return Container(
		//padding: EdgeInsets.all(16),
		child: ListView.builder(
			scrollDirection: Axis.vertical,
			shrinkWrap: true,
			itemCount: terceiros != null ? terceiros.length : 0,
			itemBuilder: (context, index) {
				Terceiro terceiro = terceiros[index];
				String fotoPerfil = terceiro.fotos.firstWhere((foto) => foto.tipo == 'PERFIL').nome;
				int telefone = terceiro.telefones.firstWhere((fone) => fone != null).numero;
				return TerceiroCard(terceiro: terceiro, fotoPerfil: fotoPerfil, telefone: telefone);
			}
		),
     );
   	}

	@override
	void dispose() {
		super.dispose();
		_bloc.dispose();
	}
}