import 'package:flutter/material.dart';

class TestePagina1 extends StatefulWidget {
  const TestePagina1({Key? key}) : super(key: key);

  @override
  State<TestePagina1> createState() => _TestePagina1State();
}

class _TestePagina1State extends State<TestePagina1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: const <Widget>[
        SizedBox(height: 20),
        Text("Página 1 renderizada com sucesso"),
        SizedBox(height: 20),
        Text("Criado por Caio Henrique")
      ]),
    );
  }
}
