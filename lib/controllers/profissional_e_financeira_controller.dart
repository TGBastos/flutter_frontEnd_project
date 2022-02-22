import 'package:rio_das_pedras_front_end/models/profissional_e_financeira_model.dart';

import '../View/utils/remover_acentos.dart';

class ProfissionalEFinanceiraController {
  ProfissionalEFinanceiraModel profissionalEFinanceiraModel =
      ProfissionalEFinanceiraModel();

  set profissionalEmpresa(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    profissionalEFinanceiraModel.profissionalEmpresa = valor;
  }

  set profissionalCargo(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    profissionalEFinanceiraModel.profissionalCargo = valor;
  }

  set profissionalTempoDeServicoAnos(String? valor) {
    profissionalEFinanceiraModel.profissionalDataAdmissao = valor ?? '';
  }

  set profissionalSalario(String? valor) {
    profissionalEFinanceiraModel.profissionalSalario = valor ?? '';
  }

  set profissionalBairro(String valor) {
    valor = RemoverAcentos.removerAcentuacao(valor);
    profissionalEFinanceiraModel.profissionalBairro = valor;
  }

  set profissionalCidade(String valor) {
    valor = RemoverAcentos.removerAcentuacao(valor);
    profissionalEFinanceiraModel.profissionalCidade = valor;
  }

  set profissionalCep(String valor) {
    profissionalEFinanceiraModel.profissionalCep = valor;
  }

  set profissionalUF(String valor) {
    valor = RemoverAcentos.removerAcentuacao(valor);
    profissionalEFinanceiraModel.profissionalUF = valor;
  }

  set profissionalLogradouro(String valor) {
    valor = RemoverAcentos.removerAcentuacao(valor);
    profissionalEFinanceiraModel.profissionalLogradouro = valor;
  }

  set profissionalComplemento(String valor) {
    valor = RemoverAcentos.removerAcentuacao(valor);
    profissionalEFinanceiraModel.profissionalComplemento = valor;
  }

  set profissionalNumero(String valor) {
    valor = RemoverAcentos.removerAcentuacao(valor);
    profissionalEFinanceiraModel.profissionalNumero = valor;
  }

  set profissionalOutrasRendas(String valor) {
    profissionalEFinanceiraModel.profissionalOutraRendaValor = int.parse(valor);
  }
}
