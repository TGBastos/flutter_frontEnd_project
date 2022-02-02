import 'package:rio_das_pedras_front_end/models/profissional_e_financeira_model.dart';

class ProfissionalFinanceiraController {
  ProfissionalEFinanceiraModel profissionalEFinanceiraModel =
      ProfissionalEFinanceiraModel();

  set profissionalEmpresa(String? valor) =>
      profissionalEFinanceiraModel.profissionalEmpresa = valor ?? '';
  set profissionalCEP(String? valor) =>
      profissionalEFinanceiraModel.profissionalCEP = valor ?? '';
  set profissionalComplemento(String? valor) =>
      profissionalEFinanceiraModel.profissionalComplemento = valor ?? '';
  set profissionalNumero(String? valor) =>
      profissionalEFinanceiraModel.profissionalNumero = valor ?? '';
  set profissionalCargo(String? valor) =>
      profissionalEFinanceiraModel.profissionalCargo = valor ?? '';
  set profissionalMatricula(String? valor) =>
      profissionalEFinanceiraModel.profissionalMatricula = valor ?? '';
  set profissionalEndereco(String? valor) =>
      profissionalEFinanceiraModel.profissionalEndereco = valor ?? '';
  set profissionalBairro(String? valor) =>
      profissionalEFinanceiraModel.profissionalBairro = valor ?? '';
  set profissionalTempoDeServicoAnos(String? valor) =>
      profissionalEFinanceiraModel.profissionalTempoDeServicoAnos = valor ?? '';
  set profissionalTempoDeServicoMeses(String? valor) =>
      profissionalEFinanceiraModel.profissionalTempoDeServicoMeses =
          valor ?? '';
  set profissionalSalario(String? valor) =>
      profissionalEFinanceiraModel.profissionalSalario = valor ?? '';
  set profissionalOutrasRendas(String? valor) =>
      profissionalEFinanceiraModel.profissionalOutrasRendas = valor ?? '';
}
