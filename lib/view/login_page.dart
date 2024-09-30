import 'package:flutter/material.dart';
import 'package:usrf/view/home.dart';

import '../logic/auth.dart';

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
            "assets/logo.png",
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
                      autofillHints: const [AutofillHints.email],
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
                      style: const TextStyle(
                          color: Colors.textColor, fontSize: 15),
                      obscureText: true,
                      autofillHints: const [AutofillHints.password],
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
                  Auth.login(emailController.text, passwordController.text)
                      .then(
                    (value) {
                      if (value) {
                        return Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      }
                    },
                  );
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
