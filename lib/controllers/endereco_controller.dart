import 'package:rio_das_pedras_front_end/models/endereco_model.dart';

import '../View/utils/remover_acentos.dart';

class EnderecoController {
  EnderecoModel enderecoModel = EnderecoModel();

  set enderecoCidade(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    enderecoModel.enderecoCidade = valor;
  }

  set enderecoCep(String? valor) {
    enderecoModel.enderecoCep = valor ?? '';
  }

  set enderecoUf(String? valor) {
    enderecoModel.enderecoUf = valor ?? '';
  }

  set enderecoComplemento(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    enderecoModel.enderecoComplemento = valor;
  }

  set enderecoNumero(String? valor) {
    enderecoModel.enderecoNumero = valor ?? '';
  }

  set endereco(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    enderecoModel.endereco = valor;
  }

  set enderecoBairro(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    enderecoModel.enderecoBairro = valor;
  }

  set enderecoTempoDeResidenciaAnos(String? valor) {
    enderecoModel.enderecoTempoDeResidenciaAnos = valor ?? '';
  }

  set enderecoTempoDeResidenciaMeses(String? valor) {
    enderecoModel.enderecoTempoDeResidenciaMeses = valor ?? '';
  }
}
