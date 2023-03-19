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
     
        Text("David Ernesto Hernandez Gallardo 25-1642-2019"),
        Text(""),
        Text("Jonathan Dagoberto Orellana Medrano 25-3904-2019"), // caja de texto o label
       
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
