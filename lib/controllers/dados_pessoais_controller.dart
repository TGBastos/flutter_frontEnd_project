import 'package:intl/intl.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20teps/repositories.dart';

import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';

import '../View/commun/functions.dart';

class DadosPessoaisController {
  static DadosPessoaisModel dadosPessoais = Repositories.dadosPessoaisModel;

  set clienteNome(String? valor) {
    if (valor != null) {
      valor = ViewFuctions.removerAcentos(valor);
    }
    dadosPessoais.clienteNome = valor ?? '';
  }

  set clienteCPF(String? valor) {
    dadosPessoais.CPF = valor ?? '';
  }

  set cpfOrgaoEmissor(String? valor) {
    if (valor != null) {
      valor = ViewFuctions.removerAcentos(valor);
    }
    dadosPessoais.orgaoEmissor = valor ?? '';
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

  set escolaridade(String valor) {
    valor = ViewFuctions.removerAcentos(valor);
    dadosPessoais.escolaridade = valor;
  }

  set expedidorRg(String? valor) {
    dadosPessoais.expedidorRg = valor ?? '';
  }

  set nacionalidade(String? valor) {
    if (valor != null) {
      valor = ViewFuctions.removerAcentos(valor);
    }

    dadosPessoais.nacionalidade = valor ?? '';
  }

  set naturalidade(String? valor) {
    dadosPessoais.naturalidade = valor ?? '';
  }

  set nomeDaMae(String? valor) {
    dadosPessoais.nomeDaMae = valor ?? '';
  }
}
