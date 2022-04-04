import 'package:aula_21_03_2022/principal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  String _email = "";
  String _password = "";
  final auth = FirebaseAuth.instance;

  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("Login", style: TextStyle(fontSize: 22)),
                      Text("Open Educação", style: TextStyle(fontSize: 32))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //CHECKBOX
                  TextButton(
                      onPressed: () {}, child: const Text("Manter conectado?")),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/recuperar');
                    },
                    child: const Text("Recuperar Senha"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(60),
                ),
                onPressed: () {
                  auth
                      .signInWithEmailAndPassword(
                          email: _email, password: _password)
                      .then((_) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => TelaPrincipal()));
                  });
                },
                child: const Text('Acessar', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SignInButton(
                    Buttons.Google,
                    text: "Login com Google",
                    onPressed: () {
                      _googleSignIn.signIn().then((userData) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => TelaPrincipal()));
                      });
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/cadastro');
                      },
                      child: const Text("Registrar-se")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
