import 'package:flutter/material.dart';
import 'package:flutter_clone_wasapp/temas/colores.dart';
import 'package:flutter_clone_wasapp/paginas/estado.dart';
import 'package:flutter_clone_wasapp/paginas/llamadas.dart';
import 'package:line_icons/line_icons.dart';


import 'chat.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  int paginaIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
      bottomNavigationBar: getfooter(),
    );
  }
Widget getBody()
{
  return IndexedStack(
    index: paginaIndex,
    children: [
    chatpagina(),
    Estado()],
  );
}

Widget getfooter()
{
  List iconosItems=[
    LineIcons.circle,
    LineIcons.phoneSquare,
    LineIcons.camera,
    LineIcons.comment,
    LineIcons.gem,
  ];

  List textItems = [
    "Estados",
    "Llamadas",
    "Camara",
    "Chats",
    "Configuracion"
  ];
  return Container(
    height: 90,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
  
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
  
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
        
          children: List.generate(textItems.length, (index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  paginaIndex=index;
                });
              },
              child: Column(
                children: [
                  Icon(iconosItems[index],
                  color: paginaIndex==index?primario:blanco.withOpacity(0.5),
              ),
        
              SizedBox(height: 5,),
              Text(textItems[index],
              style: TextStyle(fontSize: 10,
              color: paginaIndex==index?primario:blanco.withOpacity(0.5)
              ),
              )
                   ],
                   ),  
            );
          }
          )
          ),
      ),
    ),
  );
}
}