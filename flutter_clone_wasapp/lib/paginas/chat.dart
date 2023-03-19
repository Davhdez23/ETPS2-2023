import 'package:flutter/material.dart';

import '../temas/colores.dart';

class chatpagina extends StatefulWidget {
  const chatpagina({super.key});

  @override
  State<chatpagina> createState() => _chatpaginaState();
}

class _chatpaginaState extends State<chatpagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      body: getBody() ,
    );
  }

   PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      leading: IconButton(
        onPressed: null,
        icon: Text("Editar",
            style: TextStyle(
                fontSize: 16, color: primario, fontWeight: FontWeight.w500)),
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.edit,
            color: primario,
          ),
        )
      ],
    );
  }


   Widget getBody()
   {
    return ListView();

   }
}