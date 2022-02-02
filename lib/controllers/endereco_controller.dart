import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20teps/repositories.dart';
import 'package:rio_das_pedras_front_end/models/endereco_model.dart';

import '../View/commun/functions.dart';

class EnderecoController {
  static EnderecoModel enderecoModel = Repositories.enderecoModel;

  set enderecoCidade(String? valor) {
    if (valor != null) {
      valor = ViewFuctions.removerAcentos(valor);
    }
    enderecoModel.enderecoCidade = valor ?? '';
  }

  set enderecoCep(String? valor) {
    enderecoModel.enderecoCep = valor ?? '';
  }

  set enderecoUf(String? valor) {
    enderecoModel.enderecoUf = valor ?? '';
  }

  set enderecoComplemento(String? valor) {
    if (valor != null) {
      valor = ViewFuctions.removerAcentos(valor);
    }
    enderecoModel.enderecoComplemento = valor ?? '';
  }

  set enderecoNumero(String? valor) {
    enderecoModel.enderecoNumero = valor ?? '';
  }

  set endereco(String? valor) {
    if (valor != null) {
      valor = ViewFuctions.removerAcentos(valor);
    }
    enderecoModel.endereco = valor ?? '';
  }

  set enderecoBairro(String? valor) {
    if (valor != null) {
      valor = ViewFuctions.removerAcentos(valor);
    }
    enderecoModel.enderecoBairro = valor ?? '';
  }

  set enderecoTempoDeResidenciaAnos(String? valor) {
    enderecoModel.enderecoTempoDeResidenciaAnos = valor ?? '';
  }

  set enderecoTempoDeResidenciaMeses(String? valor) {
    enderecoModel.enderecoTempoDeResidenciaMeses = valor ?? '';
  }
}
