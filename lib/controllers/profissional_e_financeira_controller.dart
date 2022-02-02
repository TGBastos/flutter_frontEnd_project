import 'package:rio_das_pedras_front_end/models/profissional_e_financeira_model.dart';

class ProfissionalFinanceiraController {
  ProfissionalEFinanceiraModel profissionalEFinanceiraModel =
      ProfissionalEFinanceiraModel();

  String profissionalEmpresa(String? valor) =>
      profissionalEFinanceiraModel.profissionalEmpresa = valor ?? '';
  String profissionalCEP(String? valor) =>
      profissionalEFinanceiraModel.profissionalCEP = valor ?? '';
  String profissionalComplemento(String? valor) =>
      profissionalEFinanceiraModel.profissionalComplemento = valor ?? '';
  String profissionalNumero(String? valor) =>
      profissionalEFinanceiraModel.profissionalNumero = valor ?? '';
  String profissionalCargo(String? valor) =>
      profissionalEFinanceiraModel.profissionalCargo = valor ?? '';
  String profissionalMatricula(String? valor) =>
      profissionalEFinanceiraModel.profissionalMatricula = valor ?? '';
  String profissionalEndereco(String? valor) =>
      profissionalEFinanceiraModel.profissionalEndereco = valor ?? '';
  String profissionalBairro(String? valor) =>
      profissionalEFinanceiraModel.profissionalBairro = valor ?? '';
  String profissionalTempoDeServicoAnos(String? valor) =>
      profissionalEFinanceiraModel.profissionalTempoDeServicoAnos = valor ?? '';
  String profissionalTempoDeServicoMeses(String? valor) =>
      profissionalEFinanceiraModel.profissionalTempoDeServicoMeses =
          valor ?? '';
  String profissionalSalario(String? valor) =>
      profissionalEFinanceiraModel.profissionalSalario = valor ?? '';
  String profissionalOutrasRendas(String? valor) =>
      profissionalEFinanceiraModel.profissionalOutrasRendas = valor ?? '';
}
