import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../temas/colores.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {

     return Container(
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),

       child: ListView(
        children: [
        
          SizedBox(
          height: 10,
          ), 
          //espacio
     
          Text("PARCIAL 2 - ETPS3"),
     
          //imgen interna
         _imagen(),
     
        Text("David Ernesto Hernandez Gallardo "),
        Text("25-1642-2019"),
         SizedBox(
          height: 10,
          ), 
        Text("Jonathan Dagoberto Orellana Medrano"), // caja de texto o label
        Text("25-3904-2019")
        ],
         ),
     );
  }

  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Image.network("https://img.freepik.com/free-vector/man-avatar-profile-round-icon_24640-14044.jpg?size=338&ext=jpg"));
  }
}
