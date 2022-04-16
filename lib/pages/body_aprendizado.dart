import 'package:flutter/material.dart';

class BodyAprendizado extends StatefulWidget {
  const BodyAprendizado({ Key? key }) : super(key: key);

  @override
  State<BodyAprendizado> createState() => _BodyAprendizadoState();
}

class _BodyAprendizadoState extends State<BodyAprendizado> {


    static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Aprendizado", style: optionStyle),
    );
  }
}