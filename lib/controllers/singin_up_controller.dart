import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';

class SinginUpController {
  DadosPessoaisModel dadosPessoais = DadosPessoaisModel();

  String clienteNome(String? valor) => dadosPessoais.clienteNome = valor ?? '';
  String clienteCPF(String? valor) => dadosPessoais.CPF = valor ?? '';
  String cpfOrgaoEmissor(String? valor) =>
      dadosPessoais.orgaoEmissor = valor ?? '';
  String ufDeNascimento(String? valor) =>
      dadosPessoais.ufDeNascimento = valor ?? '';
  String sexo(String? valor) => dadosPessoais.sexo = valor ?? '';
  String rg(String? valor) => dadosPessoais.rg = valor ?? '';
  String dataDeNascimento(String? valor) =>
      dadosPessoais.dataDeNascimento = valor ?? '';
  String estadoCivil(String? valor) =>
      dadosPessoais.estadoCivil = valor ?? 'Casado';
}
