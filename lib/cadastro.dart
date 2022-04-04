import 'package:aula_21_03_2022/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  String _email = "";
  String _password = "";
  final auth = FirebaseAuth.instance;

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
                      Text("Registrar-se", style: TextStyle(fontSize: 22)),
                      Text("Open Educação", style: TextStyle(fontSize: 32))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),

              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Nome Completo',
              //     border: OutlineInputBorder(),
              //   ),
              // ),

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

              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Usuário',
              //     border: OutlineInputBorder(),
              //   ),
              // ),

              const SizedBox(height: 20),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
                obscureText: true,
                onChanged: (value) {
                  _password = value.trim();
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                      60), // fromHeight use double.infinity as width and 40 is the height
                ),
                onPressed: () async {
                  var url =
                      Uri.parse('https://api-open-educacao.000webhostapp.com/');
                  var response = await http
                      .post(url, body: {'email': _email, 'senha': _password});

                  auth.createUserWithEmailAndPassword(
                      email: _email, password: _password);
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => TelaLogin()));
                },
                child: const Text('Registrar', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: const Text("⬅ Voltar"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
