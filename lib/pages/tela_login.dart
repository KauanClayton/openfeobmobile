// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telaprincipal/pages/tela_menu.dart';
import 'package:telaprincipal/pages/tela_cadastro.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  String userEmail = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A3446),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                SizedBox(height: 150, width: 10),
                Text(
                  "OpenFeob",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
                SizedBox(height: 10, width: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Color(0xffFDC300)),
                    // ),
                    hintText: 'E-Mail',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Color(0xffFDC300),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide:
                    //       BorderSide(color: Color(0xffFDC300), width: 1.0),
                    // ),
                    hintText: 'Senha',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TelaMenu()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffFDC300)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(400, 50)),
                    ),
                    child: Text("Ver menu")),
                SizedBox(height: 10, width: 10),
                ElevatedButton(
                    onPressed: ()  {
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffFDC300)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(400, 50)),
                    ),
                    child: Text("Testar logout")),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Esqueceu sua senha? clique aqui para recupera-la. ",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Teste login: ",
                          style: TextStyle(color: Colors.white)),
                      Text(userEmail, style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                color: Color(0xffFDC300),
                height: 200,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff00497E)),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(400, 50)),
                          ),
                          child: Text("Entrar com Google")),
                      SizedBox(height: 10, width: 10),
                      ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TelaCadastro()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff00497E)),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(400, 50)),
                          ),
                          child: Text("Cadastrar")),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
   }
