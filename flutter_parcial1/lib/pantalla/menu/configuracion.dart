import 'package:flutter/material.dart';

class confi extends StatefulWidget {
  const confi({super.key});

  @override
  State<confi> createState() => _confiState();
}

class _confiState extends State<confi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
      'Configuracion',
      style: TextStyle(fontSize: 30), //estilo de fuente y tamaño,color
    ),
    ); 
  }
}
