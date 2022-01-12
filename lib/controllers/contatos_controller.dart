import 'package:rio_das_pedras_front_end/models/contatos_model.dart';

class ContatosController {
  ContatosModel contatosModel = ContatosModel();

  String contatosEmail(String? valor) => contatosModel.email = valor ?? '';
  String contatosConfirmaEmail(String? valor) =>
      contatosModel.confirmaEmail = valor ?? '';
  String contatosDDDTelefone(String? valor) =>
      contatosModel.dddTelefone = valor ?? '';
  String contatosDDDFixo(String? valor) =>
      contatosModel.dddTelefoneFixo = valor ?? '';
  String contatosTelefone(String? valor) =>
      contatosModel.telefone = valor ?? '';
  String contatosTelefoneFixo(String? valor) =>
      contatosModel.telefoneFixo = valor ?? '';
}
