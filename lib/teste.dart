import 'package:aula_21_03_2022/pagina1.dart';
import 'package:flutter/material.dart';

class TelaTabBar extends StatefulWidget {
  const TelaTabBar({Key? key}) : super(key: key);

  @override
  State<TelaTabBar> createState() => _TelaTabBarState();
}

class _TelaTabBarState extends State<TelaTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar"),
          centerTitle: true,
          backgroundColor: Colors.red,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            TestePagina1(),
            Center(
              child: Text("Chuva"),
            ),
            Center(
              child: Text("Sol"),
            ),
          ],
        ),
      ),
    );
  }
}
