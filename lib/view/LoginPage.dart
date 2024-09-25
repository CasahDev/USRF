import 'package:flutter/material.dart';

import '../logic/Auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "lib/assets/logo.png",
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          const Text("Connexion à l'application",
              style: TextStyle(color: Colors.textColor, fontSize: 25)),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    const Text("Email",
                        style:
                            TextStyle(color: Colors.textColor, fontSize: 15)),
                    TextField(
                      style: const TextStyle(color: Colors.textColor),
                      controller: emailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Entrez votre nom d\'utilisateur'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0, bottom: 25.0, left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    const Text("Mot de passe",
                        style:
                            TextStyle(color: Colors.textColor, fontSize: 15)),
                    TextField(
                      style: const TextStyle(color: Colors.textColor, fontSize: 15),
                      controller: passwordController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Entrez votre mot de passe'),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Login");
                  Auth.login(emailController.text, passwordController.text);
                },
                child: const Text('Connexion'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
