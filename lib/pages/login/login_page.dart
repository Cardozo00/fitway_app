import 'package:fitway_app/pages/tela_inical/tela_inical.dart';
import 'package:fitway_app/shared/input_decoration.dart';
import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});
  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController confSenhaController = TextEditingController();
  var _globalKey = GlobalKey<FormState>();
  bool cadastro = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0A6D92),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Image.asset(
                    "lib/imagens/logo.jpg",
                    height: 250,
                  ),
                ),
                Visibility(
                  visible: cadastro,
                  child: TextFormField(
                    controller: nomeController,
                    cursorColor: Colors.black,
                    validator: (String? value) {
                      if (value == null) {
                        return "O nome não pode ser vazio";
                      }
                      if (value.length < 5) {
                        return "O nome muito curto";
                      }
                      return null;
                    },
                    decoration:
                        getAutenticationInputDecoration("Nome Completo"),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  controller: emailController,
                  validator: (String? value) {
                    if (value == null) {
                      return "O e-mail não pode ser vazio";
                    }
                    if (value.length < 5) {
                      return "O e-mail é muito curto";
                    }
                    if (!value.contains("@")) {
                      return "O e-mail não é valido";
                    }
                    return null;
                  },
                  decoration: getAutenticationInputDecoration("E-mail"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  controller: senhaController,
                  validator: (String? value) {
                    if (value == null) {
                      return "Senha inválida";
                    }
                    if (value.length < 6) {
                      return "Senha muito curta";
                    }
                    return null;
                  },
                  decoration: getAutenticationInputDecoration("Senha"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: cadastro,
                  child: TextFormField(
                    obscureText: true,
                    controller: confSenhaController,
                    cursorColor: Colors.black,
                    validator: (String? value) {
                      if (value == null) {
                        return "Senhas Difrentes";
                      }
                      if (value != senhaController.text) {
                        return "Senhas Difrentes";
                      }
                      return null;
                    },
                    decoration:
                        getAutenticationInputDecoration("Confimar Senha"),
                  ),
                ),
                Visibility(
                  visible: cadastro,
                  child: const SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              const Color.fromRGBO(255, 255, 255, 1)),
                          shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          )),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => TelaInical()));
                      },
                      child: Text(
                        (!cadastro) ? "ENTRAR" : "CADASTRAR-SE",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        cadastro = !cadastro;
                      });
                    },
                    child: Text(
                      (!cadastro)
                          ? "Ainda não tem uma conta? Cadastre-se"
                          : "Já tem uma conta? Entrar",
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ))
              ],
            ),
          ),
        ));
  }
}
