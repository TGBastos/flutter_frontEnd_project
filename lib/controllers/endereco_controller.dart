import 'package:rio_das_pedras_front_end/models/endereco_model.dart';

class EnderecoController {
  EnderecoModel enderecoModel = EnderecoModel();

  String enderecoCidade(String? valor) =>
      enderecoModel.enderecoCidade = valor ?? '';
  String enderecoCep(String? valor) => enderecoModel.enderecoCep = valor ?? '';
  String enderecoUf(String? valor) => enderecoModel.enderecoUf = valor ?? '';
  String enderecoComplemento(String? valor) =>
      enderecoModel.enderecoComplemento = valor ?? '';
  String enderecoNumero(String? valor) =>
      enderecoModel.enderecoNumero = valor ?? '';
  String endereco(String? valor) => enderecoModel.endereco = valor ?? '';
  String enderecoBairro(String? valor) =>
      enderecoModel.enderecoBairro = valor ?? '';
  String enderecoTempoDeResidenciaAnos(String? valor) =>
      enderecoModel.enderecoTempoDeResidenciaAnos = valor ?? '';
  String enderecoTempoDeResidenciaMeses(String? valor) =>
      enderecoModel.enderecoTempoDeResidenciaMeses = valor ?? '';
}
