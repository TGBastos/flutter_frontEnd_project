import 'dart:convert';

class EnderecoModel {
  String enderecoCidade = '';
  String enderecoCep = '';
  String enderecoUf = '';
  String enderecoComplemento = '';
  String enderecoNumero = '';
  String endereco = '';
  String enderecoBairro = '';
  String enderecoTempoDeResidenciaAnos = '';
  String enderecoTempoDeResidenciaMeses = '';

  EnderecoModel({
    enderecoCidade,
    enderecoCep,
    enderecoUf,
    enderecoComplemento,
    enderecoNumero,
    endereco,
    enderecoBairro,
    enderecoTempoDeResidenciaAnos,
    enderecoTempoDeResidenciaMeses,
  });
}
