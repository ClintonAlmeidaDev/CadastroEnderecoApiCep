import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model/enderecoCep.dart';

const apiBaseUrl = 'https://viacep.com.br/';

Future<EnderecoCep> buscarPorCep({String? cep}) async {
  // String cep = "06774340";
  var url = '$apiBaseUrl/ws/$cep/json/';

  final response = await http.get(Uri.parse(url));
  if (response.statusCode != 200) throw response.body;

  // print("Dentro da funcao");
  // print(response.body);

  var responseJson = json.decode(response.body);
  //print(responseJson);
  //print(response is Map);
  EnderecoCep enderecoCompleto = EnderecoCep.fromJson(responseJson);
  //responseJson.forEach((map) => enderecoCeps.add(EnderecoCep.fromJson(map)));

  //for (var element in enderecoCeps) {
  //  print(element.bairro);
  //}
  return enderecoCompleto;
}
