import 'package:app_flutter_navegacao_nomeada/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.dark,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.purple,
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                  size: 48,
                                ),
                              ),
                              Icon(
                                Icons.password,
                                color: Colors.white,
                                size: 48,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    const Campo(
                      keyboardType: TextInputType.emailAddress,
                      labelText: "E-mail",
                      obscureText: false,
                    ),
                    const Campo(
                      keyboardType: TextInputType.text,
                      labelText: "Senha",
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 64),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size.fromHeight(33),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homepage(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "Entrar",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Campo extends StatelessWidget {
  const Campo({
    super.key,
    required this.labelText,
    required this.keyboardType,
    required this.obscureText,
  });

  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Campo vazio";
          }
          return null;
        },
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 16,
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
