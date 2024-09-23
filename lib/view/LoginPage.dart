import 'package:flutter/cupertino.dart';
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
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Connexion à l'application",
                style: const TextStyle(color: Colors.textColor, fontSize: 30)),
            Column(
              children: [
                const Text("Email",
                    style: TextStyle(color: Colors.textColor)),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Entrez votre nom d\'utilisateur'),
                ),
                const Text("Mot de passe",
                    style: TextStyle(color: Colors.textColor)),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Entrez votre mot de passe'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Auth.login(emailController.text, passwordController.text);
                  },
                  child: const Text('Connexion'),
                ),
              ],
            )
          ]
      ),
    );
  }


}