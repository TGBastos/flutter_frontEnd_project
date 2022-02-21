import 'package:intl/intl.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_tratamento.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_loja_retirada_cartao.dart';
import 'package:rio_das_pedras_front_end/View/utils/remover_acentos.dart';
import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';

class DadosPessoaisController {
  DadosPessoaisModel dadosPessoais = DadosPessoaisModel();

  set clienteNome(String? valor) {
    print(valor);
    valor = RemoverAcentos.removerAcentuacao(valor!);
    print(valor);
    dadosPessoais.clienteNome = valor;
  }

  set clienteCPF(String? valor) {
    dadosPessoais.CPF = int.parse(valor!);
  }

  set cpfOrgaoEmissor(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
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
    DateFormat receberFormato = DateFormat('dd-MM-yyyy HH:mm:ss.SSS');
    DateFormat enviarFormato = DateFormat('yyyy-MM-dd');
    final DateTime showedTime = receberFormato.parse('$valor 00:00:00.000');
    String formatadaParaEnviar = enviarFormato.format(showedTime);
    dadosPessoais.dataDeNascimento = formatadaParaEnviar;
  }

  set estadoCivil(String? valor) {
    dadosPessoais.estadoCivil = valor ?? '';
  }

  set escolaridade(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    dadosPessoais.escolaridade = valor;
  }

  set expedidorRg(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    dadosPessoais.expedidorRg = valor;
  }

  set nacionalidade(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    dadosPessoais.nacionalidade = valor;
  }

  set naturalidade(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    dadosPessoais.naturalidade = valor;
  }

  set nomeDaMae(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    dadosPessoais.nomeDaMae = valor;
  }

  set dataVencimentoFatura(String valor) {
    dadosPessoais.vencimentoDaFatura = valor;
  }

  set lojaRetiradaCartao(String valor) {
    dadosPessoais.lojaRetiradaCartao = valor;
  }

  set tratamento(String valor) {
    dadosPessoais.tratamento = valor;
  }
}
