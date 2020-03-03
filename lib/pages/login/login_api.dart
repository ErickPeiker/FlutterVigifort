import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/model/usuario.dart';
import 'package:myapp/utils/apiResponse.dart';

class LoginApi {
	static Future<ApiResponse<Usuario>> login(String login, String senha) async {
		try {
			var url = 'https://carros-springboot.herokuapp.com/api/v2/login';
			var headers = {
				"Content-Type": "application/json"
			};
			var params = {
				'username': login,
				'password': senha
			};
			String jsonParams = json.encode(params);

			var response = await http.post(url, body: jsonParams, headers: headers);
			if (response.statusCode == 200) {
				Usuario usuario = Usuario.fromJson(response.body);
				return ApiResponse.ok(usuario);
			}

			Map mapResponse = json.decode(response.body);
			return ApiResponse.error(mapResponse["error"]);
		} catch (error, exception) {
			print("Erro no login $error > $exception");
			return ApiResponse.error("Não foi possível fazer o login");
		}
	}
}