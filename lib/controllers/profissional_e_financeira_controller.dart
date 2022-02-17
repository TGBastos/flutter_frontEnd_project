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
    profissionalEFinanceiraModel.profissionalTempoDeServicoAnos = valor ?? '';
  }

  set profissionalSalario(String? valor) {
    profissionalEFinanceiraModel.profissionalSalario = valor ?? '';
  }

  void profissionalEndereco(String chave, String valor) {
    profissionalEFinanceiraModel.profissionalEndereco[chave] = valor;
  }

  set profissionalOutrasRendas(String valor) {
    profissionalEFinanceiraModel.profissionalOutrasRendas['renda'] =
        int.parse(valor);
  }
}
