import 'package:flutter/material.dart';
import 'package:flutter_parcial1/pantalla/principal.dart';

void main() {
  runApp(Parcial());
}
class Parcial extends StatelessWidget {
  const Parcial({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Principal(),
      
    );
  }
}


