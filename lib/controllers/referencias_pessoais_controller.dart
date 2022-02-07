import 'package:rio_das_pedras_front_end/models/referencias_comerciais_models.dart';
import 'package:rio_das_pedras_front_end/models/referencias_pessoais_models.dart';

class ReferenciasPessoaisController {
  ReferenciasPessoaisModel referenciasPessoaisModel =
      ReferenciasPessoaisModel();

  set referenciaPessoalNome1(String? valor) {
    referenciasPessoaisModel.referenciaPessoalNome1 = valor ?? '';
  }

  set referenciaPessoalNome2(String? valor) {
    referenciasPessoaisModel.referenciaPessoalNome2 = valor ?? '';
  }

  set referenciaPessoalDDDTelefone1(String? valor) {
    referenciasPessoaisModel.referenciaPessoalDDDTelefone1 = valor ?? '';
  }

  set referenciaPessoalTelefone1(String? valor) {
    referenciasPessoaisModel.referenciaPessoalTelefone1 = valor ?? '';
  }

  set referenciaPessoalDDDTelefone2(String? valor) {
    referenciasPessoaisModel.referenciaPessoalDDDTelefone2 = valor ?? '';
  }

  set referenciaPessoalTelefone2(String? valor) {
    referenciasPessoaisModel.referenciaPessoalTelefone2 = valor ?? '';
  }
}
