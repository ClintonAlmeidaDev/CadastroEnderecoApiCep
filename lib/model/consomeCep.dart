import 'dart:convert';
import 'package:http/http.dart';
import 'enderecoCep.dart';
import '../api.dart';

class ConsomeCep {
  Future<void> main(List<String> args) async {
    EnderecoCep teste = await buscarPorCep(cep: "06774340");
    print(teste.bairro);
  }
}
