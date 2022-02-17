import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';
import 'package:rio_das_pedras_front_end/models/endereco_model.dart';

import '../../../../models/contatos_model.dart';
import '../../../../models/dados_pessoais_model.dart';
import '../../../../models/profissional_e_financeira_model.dart';
import '../../../../models/referencias_comerciais_models.dart';
import '../../../../models/referencias_pessoais_models.dart';

class Repositories {
  static DadosPessoaisModel dadosPessoaisRepository =
      Controllers.dadosPessoaisController.dadosPessoais;
  static EnderecoModel enderecoModelRepository =
      Controllers.enderecoController.enderecoModel;
  static ContatosModel contatosRepository =
      Controllers.contatosController.contatosModel;
  static ProfissionalEFinanceiraModel profissionalFinanceiraRepository =
      Controllers
          .profissionalEFinanceiraController.profissionalEFinanceiraModel;

  static ReferenciasPessoaisModel referenciasPessoaisRepository =
      Controllers.referenciasPessoaisController.referenciasPessoaisModel;
  static ReferenciasComerciaisModel referenciasComerciaisRepository =
      Controllers.referenciasComerciaisController.referenciaComercialModel;
}
