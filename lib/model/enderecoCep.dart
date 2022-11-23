import 'dart:convert';

class EnderecoCep {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;

  EnderecoCep(this.cep, this.logradouro, this.complemento, this.bairro,
      this.localidade, this.uf, this.ibge, this.gia, this.ddd, this.siafi);

  factory EnderecoCep.fromJson(Map<String, dynamic> jsonMap) {
    return EnderecoCep(
        jsonMap['cep'],
        jsonMap['logradouro'],
        jsonMap['complemento'],
        jsonMap['bairro'],
        jsonMap['localidade'],
        jsonMap['uf'],
        jsonMap['ibge'],
        jsonMap['gia'],
        jsonMap['ddd'],
        jsonMap['siafi']);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Teste de Objeto";
  }
  //Map<String, dynamic> factory toJson() => {

  String enderecoCompleto(EnderecoCep endereco) {
    return "RUA: ${endereco.logradouro} \n"
        "BAIRRO: ${endereco.bairro} \n"
        "LOCALIDADE: ${endereco.localidade} \n"
        "COMPLEMENTO: ${endereco.complemento} \n"
        "UF: ${endereco.uf} \n";
  }
}
