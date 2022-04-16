import 'package:flutter/material.dart';

class BodyConta extends StatefulWidget {
  const BodyConta({ Key? key }) : super(key: key);

  @override
  State<BodyConta> createState() => _BodyContaState();
}

class _BodyContaState extends State<BodyConta> {


    static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Conta", style: optionStyle),
    );
  }
}