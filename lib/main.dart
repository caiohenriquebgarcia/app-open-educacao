import 'package:aula_21_03_2022/cadastro.dart';
import 'package:aula_21_03_2022/login.dart';
import 'package:aula_21_03_2022/principal.dart';
import 'package:aula_21_03_2022/recuperar.dart';
import 'package:aula_21_03_2022/teste.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TelaLogin(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => const MyApp(),
        '/cadastro': (BuildContext context) => const TelaCadastro(),
        '/login': (BuildContext context) => const TelaLogin(),
        '/principal': (BuildContext context) => TelaPrincipal(),
        '/recuperar': (BuildContext context) => const TelaRecuperacaoSenha(),
        '/tabbar': (BuildContext context) => const TelaTabBar(),
      },
    );
  }
}
