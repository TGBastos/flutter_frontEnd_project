import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20teps/repositories.dart';
import 'package:rio_das_pedras_front_end/models/contatos_model.dart';

class ContatosController {
  static ContatosModel contatosModel = Repositories.contatosRepositorie;

  set contatosEmail(String? valor) {
    contatosModel.email = valor ?? '';
  }

  set contatosConfirmaEmail(String? valor) {
    contatosModel.confirmaEmail = valor ?? '';
  }

  set contatosDDDTelefone(String? valor) {
    contatosModel.dddTelefone = valor ?? '';
  }

  set contatosDDDFixo(String? valor) {
    contatosModel.dddTelefoneFixo = valor ?? '';
  }

  set contatosTelefone(String? valor) {
    contatosModel.telefone = valor ?? '';
  }

  set contatosTelefoneFixo(String? valor) {
    contatosModel.telefoneFixo = valor ?? '';
  }
}
