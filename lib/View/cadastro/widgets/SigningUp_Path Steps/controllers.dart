import 'package:rio_das_pedras_front_end/controllers/contatos_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/profissional_e_financeira_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/referencias_comerciais_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/referencias_pessoais_controller.dart';

class Controllers {
  static DadosPessoaisController dadosPessoaisController =
      DadosPessoaisController();
  static ContatosController contatosController = ContatosController();
  static EnderecoController enderecoController = EnderecoController();
  static ProfissionalEFinanceiraController profissionalEFinanceiraController =
      ProfissionalEFinanceiraController();
  static ReferenciasComerciaisController referenciasComerciaisController =
      ReferenciasComerciaisController();
  static ReferenciasPessoaisController referenciasPessoaisController =
      ReferenciasPessoaisController();
}
