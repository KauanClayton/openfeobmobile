import 'package:flutter/material.dart';
import 'package:telaprincipal/pages/tela_menu.dart';
import 'package:telaprincipal/pages/tela_cadastro.dart';
import 'package:telaprincipal/pages/tela_login.dart';

void main() {
  runApp(const Main());
} 

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Openfeob',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaLogin(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => Main(),
        '/cadastro': (BuildContext context) => TelaCadastro(),
        '/menu': (BuildContext context) => TelaMenu(),
      },
    );
  }
}
