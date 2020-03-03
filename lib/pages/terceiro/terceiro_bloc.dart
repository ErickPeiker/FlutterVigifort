import 'dart:async';
import 'package:myapp/model/terceiro.dart';
import 'package:myapp/pages/terceiro/terceiro_api.dart';

class TerceiroBloc {

	final StreamController _streamController = StreamController<List<Terceiro>>();
	Stream<List<Terceiro>> get stream => _streamController.stream;
	
	loadTerceiros (String nome, String cpf, String cursoVencido, String grandesEventos) async {
		List<Terceiro> terceiros =  await TerceiroApi.getTerceiros(
										nome: nome, 
										cpf: cpf,
										cursoVencido: cursoVencido,
										grandesEventos: grandesEventos
									);
		_streamController.add(terceiros);
	}

	void dispose() {
		_streamController.close();
	}

}