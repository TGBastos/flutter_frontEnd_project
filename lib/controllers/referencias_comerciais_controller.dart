import 'package:rio_das_pedras_front_end/models/referencias_comerciais_models.dart';

import '../View/utils/remover_acentos.dart';

class ReferenciasComerciaisController {
  ReferenciasComerciaisModel referenciaComercialModel =
      ReferenciasComerciaisModel();

  set referenciaComercialEmpresa1(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    referenciaComercialModel.referenciaComercialEmpresa1 = valor;
  }

  set referenciaComercialEmpresa2(String? valor) {
    valor = RemoverAcentos.removerAcentuacao(valor!);
    referenciaComercialModel.referenciaComercialEmpresa2 = valor;
  }

  set referenciaComercialDDDTelefone1(String? valor) {
    referenciaComercialModel.referenciaComercialDDDTelefone1 = valor ?? '';
  }

  set referenciaComercialTelefone1(String? valor) {
    referenciaComercialModel.referenciaComercialTelefone1 = valor ?? '';
  }

  set referenciaComercialDDDTelefone2(String? valor) {
    referenciaComercialModel.referenciaComercialDDDTelefone2 = valor ?? '';
  }

  set referenciaComercialTelefone2(String? valor) {
    referenciaComercialModel.referenciaComercialTelefone2 = valor ?? '';
  }
}
