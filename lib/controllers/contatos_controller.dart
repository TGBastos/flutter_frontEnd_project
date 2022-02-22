import 'package:rio_das_pedras_front_end/models/contatos_model.dart';

class ContatosController {
  ContatosModel contatosModel = ContatosModel();

  set contatosEmail(String? valor) {
    contatosModel.email = valor ?? '';
  }

  set contatosConfirmaEmail(String? valor) {
    contatosModel.confirmaEmail = valor ?? '';
  }

  set contatosDDDcelular(String? valor) {
    contatosModel.celularDDD = int.parse(valor!);
  }

  set contatosDDDFixo(String? valor) {
    contatosModel.dddTelefoneFixo = int.parse(valor!);
  }

  set contatosTelefone(String? valor) {
    contatosModel.celular = int.parse(valor!);
  }

  set contatosTelefoneFixo(String? valor) {
    contatosModel.telefoneFixo = int.parse(valor!);
  }
}
