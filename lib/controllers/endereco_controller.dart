import 'package:rio_das_pedras_front_end/models/endereco_model.dart';

class EnderecoController {
  EnderecoModel enderecoModel = EnderecoModel();

  set enderecoCidade(String? valor) =>
      enderecoModel.enderecoCidade = valor ?? '';
  set enderecoCep(String? valor) => enderecoModel.enderecoCep = valor ?? '';
  set enderecoUf(String? valor) => enderecoModel.enderecoUf = valor ?? '';
  set enderecoComplemento(String? valor) =>
      enderecoModel.enderecoComplemento = valor ?? '';
  set enderecoNumero(String? valor) =>
      enderecoModel.enderecoNumero = valor ?? '';
  set endereco(String? valor) => enderecoModel.endereco = valor ?? '';
  set enderecoBairro(String? valor) =>
      enderecoModel.enderecoBairro = valor ?? '';
  set enderecoTempoDeResidenciaAnos(String? valor) =>
      enderecoModel.enderecoTempoDeResidenciaAnos = valor ?? '';
  set enderecoTempoDeResidenciaMeses(String? valor) =>
      enderecoModel.enderecoTempoDeResidenciaMeses = valor ?? '';
}
