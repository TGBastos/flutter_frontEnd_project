import 'package:rio_das_pedras_front_end/models/contatos_model.dart';

class ContatosController {
  ContatosModel contatosModel = ContatosModel();

  set contatosEmail(String? valor) {
    contatosModel.email = valor ?? '';
  }

  set contatosConfirmaEmail(String? valor) {
    contatosModel.confirmaEmail = valor ?? '';
  }

  set contatosDDDTelefone(String? valor) {
    contatosModel.celularDDD = valor ?? '';
  }

  set contatosDDDFixo(String? valor) {
    contatosModel.dddTelefoneFixo = valor ?? '';
  }

  set contatosTelefone(String? valor) {
    contatosModel.celular = valor ?? '';
  }

  set contatosTelefoneFixo(String? valor) {
    contatosModel.telefoneFixo = valor ?? '';
  }
}
