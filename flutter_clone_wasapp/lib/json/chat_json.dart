import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

const List profile = 
[{
  "name":"Juan Perez",
  "img":"https://images.pexels.com/photos/428361/pexels-photo-428361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
}];

const List chatdata =
[
{
  "name":"Gabriela Perez",
  "img":"https://images.pexels.com/photos/1547971/pexels-photo-1547971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "text":"Hola amigo",
  "date":"17/03/2023"
},
{
  "name":"David Hernandez",
  "img":"https://images.pexels.com/photos/1547971/pexels-photo-1547971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "text":"Hola amiga, ¿Que tal como estas?",
  "date":"17/03/2023"
}
];

List config_sec_uno = 
[
{
  "icon":Icons.star,
  "text":"Mensaje",
  "color":Colors.yellow[700]
},
{
  "icon":Icons.laptop,
  "text":"WhatsApp web/Desktop",
  "color":Colors.green[800]
}
];

List config_sec_dos = 
[
  {
    "icon":Icons.lock,
    "text":"Cuenta",
    "color":Colors.blue[700]
  },
  {
    "icon":Icons.chat_bubble,
    "text":"Chats",
    "color":Colors.green
  },
  {
    "icon":Icons.notification_important,
    "text":"Notificaciones",
    "color":Colors.redAccent
  },
  {
    "icon":LineIcons.database,
    "text":"Almacenar respaldos",
    "color":Colors.green
  }
];

List config_sec_tres = 
[
  
  {
    "icon":Icons.info_outline,
    "text":"Help",
    "color":Colors.blue[600]
  },
  {
    "icon":Icons.favorite_rounded,
    "text":"Llamar a un amigo",
    "color":Colors.red[400]
  }
];

const List Mensaje = 
[
  {
    "isMe":true,
    "menssage":"¿Que haces?",
    "time":"18:42",
    "isLast":false
  },
   {
    "isMe":false,
    "menssage":"¿Que haces?",
    "time":"18:42", 
    "isLast":true
  }
];

