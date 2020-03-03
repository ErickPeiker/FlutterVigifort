import 'package:http/http.dart' as http;
import 'package:myapp/model/terceiro.dart';

class TerceiroApi {
	static Future<List<Terceiro>> getTerceiros({
		String nome, 
		String cpf, 
		String cursoVencido = "Todos", 
		String grandesEventos = "Todos"}) async {

		List<Terceiro> terceiros = List<Terceiro>();
		try {
			var filter = '';
			if (nome != null) {
				filter += '&nome=$nome';
			}
			if (cpf != null) {
				filter += '&cpf=$cpf';
			}
			if (cursoVencido != null) {
				filter += '&cursoVencido=$cursoVencido';
			}
			if (grandesEventos != null) {
				filter += '&grandesEventos=$grandesEventos';
			}			
			var url = 'http://localhost:8080/api/terceiros?'+filter;
			print("URL: $url");
			var response = await http.get(url);
			if (response.statusCode == 200) {
				List<Terceiro> terceiros = Terceiro.fromListJson(response.body);
				return terceiros;
			} else {
				print("Código de erro: ${response.statusCode}");
				return terceiros;
			}
		} catch(error, exception) {
			print("Erro: $error");
			print("Exception: $exception");
			return terceiros;
		}
	}
}