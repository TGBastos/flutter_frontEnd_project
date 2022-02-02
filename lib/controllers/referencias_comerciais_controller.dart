import 'package:rio_das_pedras_front_end/models/referencias_comerciais_models.dart';

class ReferenciasComerciaisController {
  ReferenciaComercialModel referenciaComercialModel =
      ReferenciaComercialModel();

  String referenciaComercialEmpresa1(String? valor) =>
      referenciaComercialModel.referenciaComercialEmpresa1 = valor ?? '';
  String referenciaComercialEmpresa2(String? valor) =>
      referenciaComercialModel.referenciaComercialEmpresa2 = valor ?? '';
  String referenciaComercialDDDTelefone1(String? valor) =>
      referenciaComercialModel.referenciaComercialDDDTelefone1 = valor ?? '';
  String referenciaComercialTelefone1(String? valor) =>
      referenciaComercialModel.referenciaComercialTelefone1 = valor ?? '';
  String referenciaComercialDDDTelefone2(String? valor) =>
      referenciaComercialModel.referenciaComercialDDDTelefone2 = valor ?? '';
  String referenciaComercialTelefone2(String? valor) =>
      referenciaComercialModel.referenciaComercialTelefone2 = valor ?? '';
}
