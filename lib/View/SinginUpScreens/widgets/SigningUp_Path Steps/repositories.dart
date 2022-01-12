import 'package:rio_das_pedras_front_end/controllers/contatos_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/profissional_e_financeira_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/referencias_comerciais_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/referencias_pessoais_controller.dart';
import 'package:rio_das_pedras_front_end/models/profissional_e_financeira_model.dart';

class Repositories {
  static ContatosController contatosRepositorie = ContatosController();
  static ProfissionalFinanceiraController profissionalFinanceiraRepositorie =
      ProfissionalFinanceiraController();
  static ReferenciasPessoaisController referenciasPessoaisRepositorie =
      ReferenciasPessoaisController();
  static ReferenciasComerciaisController referenciasComerciaisRepositorie =
      ReferenciasComerciaisController();
}
