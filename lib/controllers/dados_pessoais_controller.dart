import 'package:intl/intl.dart';
import 'package:rio_das_pedras_front_end/View/utils/remover_acentos.dart';
import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';

class DadosPessoaisController {
  static DadosPessoaisModel dadosPessoais = DadosPessoaisModel();

  set clienteNome(String? valor) {
    valor = RemoverAcentos.removeDiacritics(valor!);
    dadosPessoais.clienteNome = valor;
  }

  set clienteCPF(String? valor) {
    dadosPessoais.CPF = valor ?? '';
  }

  set cpfOrgaoEmissor(String? valor) {
    valor = RemoverAcentos.removeDiacritics(valor!);
    dadosPessoais.orgaoEmissor = valor;
  }

  set ufDeNascimento(String? valor) {
    dadosPessoais.ufDeNascimento = valor ?? '';
  }

  set sexo(String? valor) {
    dadosPessoais.sexo = valor ?? '';
  }

  set rg(String? valor) {
    dadosPessoais.rg = valor ?? '';
  }

  set dataDeNascimento(String? valor) {
    DateFormat formatoReceber = DateFormat('dd-MM-yyyy HH:mm:ss.SSS');
    DateFormat formatoEnviar = DateFormat('yyyy-MM-dd');
    final DateTime showedTime = formatoReceber.parse('$valor 00:00:00.000');
    String formatadaParaEnviar = formatoEnviar.format(showedTime);
    dadosPessoais.dataDeNascimento = formatadaParaEnviar;
  }

  set estadoCivil(String? valor) {
    dadosPessoais.estadoCivil = valor ?? '';
  }

  set escolaridade(String? valor) {
    valor = RemoverAcentos.removeDiacritics(valor!);
    dadosPessoais.escolaridade = valor;
  }

  set expedidorRg(String? valor) {
    valor = RemoverAcentos.removeDiacritics(valor!);
    dadosPessoais.expedidorRg = valor;
  }

  set nacionalidade(String? valor) {
    valor = RemoverAcentos.removeDiacritics(valor!);
    dadosPessoais.nacionalidade = valor;
  }

  set naturalidade(String? valor) {
    valor = RemoverAcentos.removeDiacritics(valor!);
    dadosPessoais.naturalidade = valor;
  }

  set nomeDaMae(String? valor) {
    valor = RemoverAcentos.removeDiacritics(valor!);
    dadosPessoais.nomeDaMae = valor;
  }
}
