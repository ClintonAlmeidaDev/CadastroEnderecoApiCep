import 'dart:html';
import 'package:buscarcep/api.dart' as api;
import 'package:buscarcep/model/enderecoCep.dart';

late InputElement rua;
late InputElement numero;
late InputElement cep;
late InputElement bairro;
late InputElement complemento;
late InputElement cidade;
late InputElement estado;
late ParagraphElement rodape;

Future<void> main() async {
  inicializaDivs();
  chamaEnderecoPorCep();
  mensagemRodape();

  //
  // divOutPut.append(Text("RUA: ${endereco.localidade}"
  //   " BAIRRO: ${endereco.bairro} "));
  //divOutPut.innerText = endereco.enderecoCompleto(endereco);

  // ruaInput.value = endereco.logradouro;
  //imprimeValor();

  // document.querySelector('#submit')?.onClick.listen((event) {
  //   imprimeValor();
  // });
}

void inicializaDivs() {
  cep = querySelector("#cep") as InputElement;
  rua = querySelector("#lagradouro") as InputElement;
  numero = querySelector("#numero") as InputElement;
  bairro = querySelector("#bairro") as InputElement;
  complemento = querySelector("#complemento") as InputElement;
  cidade = querySelector("#cidade") as InputElement;
  estado = querySelector("#estado") as InputElement;
  rodape = querySelector(".m-b-footer") as ParagraphElement;
}

void chamaEnderecoPorCep() {
  cep.onChange.listen((event) async {
    EnderecoCep endereco = await api.buscarPorCep(cep: cep.value);
    rua.value = endereco.logradouro;
    bairro.value = endereco.bairro;
    complemento.value = endereco.complemento;
    cidade.value = endereco.localidade;
    estado.value = endereco.uf;
  });
}

void mensagemRodape() {
  rodape.innerText =
      "Forjado por Clinton \n Na montanha da perdição - ${DateTime.now().year}";
}
