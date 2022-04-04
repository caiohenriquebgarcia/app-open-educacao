import 'package:aula_21_03_2022/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          "Open Educação",
          style: TextStyle(
            color: Color(0xff46AEF7),
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff46AEF7),
        actions: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Caio",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        auth.signOut();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => TelaLogin()));
                      },
                      child: const Text("Sair do App")),
                ],
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              padding: const EdgeInsets.all(25),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("Área do Aluno",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.play_arrow,
                          size: 18, color: Colors.grey),
                      label: const Text("Instruções",
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "O que você está procurando?",
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text("Escolher"),
                        SizedBox(height: 10),
                        Text("Selecione um curso \nque você se interessou."),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text("Assistir"),
                        SizedBox(height: 10),
                        Text("Selecione um curso que \nvocê se interessou."),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Vídeos",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/tabbar');
                        },
                        child: const Text("Filtrar ⬇")),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset('assets/images/figma.png'),
                          const ListTile(
                            title: Text('Como utilizar plugins no Figma'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Figma é um editor gráfico de vetor e prototipagem de projetos de design baseado principalmente no navegador web...',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset('assets/images/figma.png'),
                          const ListTile(
                            title: Text('Como utilizar plugins no Figma'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Figma é um editor gráfico de vetor e prototipagem de projetos de design baseado principalmente no navegador web...',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset('assets/images/figma.png'),
                          const ListTile(
                            title: Text('Como utilizar plugins no Figma'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Figma é um editor gráfico de vetor e prototipagem de projetos de design baseado principalmente no navegador web...',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Reportar um erro",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    const Text(
                      "Você será redirecionado para uma página onde poderá descrever o seu problema.",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("Reportar"),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size.fromHeight(60),
                      ),
                    ),
                    const SizedBox(height: 30)
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
