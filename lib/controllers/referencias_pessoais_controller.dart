import 'package:rio_das_pedras_front_end/models/referencias_comerciais_models.dart';
import 'package:rio_das_pedras_front_end/models/referencias_pessoais_models.dart';

class ReferenciasPessoaisController {
  ReferenciasPessoaisModel referenciasPessoaisModel =
      ReferenciasPessoaisModel();

  String referenciaPessoalNome1(String? valor) =>
      referenciasPessoaisModel.referenciaPessoalNome1 = valor ?? '';
  String referenciaPessoalNome2(String? valor) =>
      referenciasPessoaisModel.referenciaPessoalNome2 = valor ?? '';
  String referenciaPessoalDDDTelefone1(String? valor) =>
      referenciasPessoaisModel.referenciaPessoalDDDTelefone1 = valor ?? '';
  String referenciaPessoalTelefone1(String? valor) =>
      referenciasPessoaisModel.referenciaPessoalTelefone1 = valor ?? '';
  String referenciaPessoalDDDTelefone2(String? valor) =>
      referenciasPessoaisModel.referenciaPessoalDDDTelefone2 = valor ?? '';
  String referenciaPessoalTelefone2(String? valor) =>
      referenciasPessoaisModel.referenciaPessoalTelefone2 = valor ?? '';
}
