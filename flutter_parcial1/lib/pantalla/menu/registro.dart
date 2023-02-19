import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}
class _principalState extends State<principal> 
{
  @override
  Widget build(BuildContext context) 
  {
     return ListView(
      children: [
         
         SizedBox(
          height: 10,
        ), //espacio
        Text("PARCIAL I - ETPS3"),
        Text("David Ernesto Hernandez Gallardo 25-1642-2019"),
        Text("Jonathan Dagoberto Orellana Medrano 25-3904-2019"), // caja de texto o label
       
        //imgen interna
       _imagen(),
       _carnetinput(),
        _nombreinput(),
        _apellidoinput(),
        _passwordinput(),
        _direccioninput(),
        _repassinput(),
        _correotinput(),
      ],
    );
  }

  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Image.network("https://cdn-icons-png.flaticon.com/128/5087/5087579.png"));
  }
  Container _carnetinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(Icons.numbers, color: Colors.grey),
              hintText: 'Carnet',
              labelText: 'Carnet',
              border: InputBorder.none),
        )); //caja de texto
  }
  Container _nombreinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(Icons.abc, color: Colors.grey),
              hintText: 'Nombre',
              labelText: 'Nombres',
              border: InputBorder.none),
        )); //caja de texto
  }
   Container _apellidoinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(Icons.abc, color: Colors.grey),
              hintText: 'Apellido',
              labelText: 'Apellido',
              border: InputBorder.none),
        )); //caja de texto
  }
   Container _direccioninput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
         // maxLines: 20,
          decoration: InputDecoration(
              icon: Icon(Icons.directions, color: Colors.grey),
              hintText: 'Direccion',
              labelText: 'Direccion',
              border: InputBorder.none),
        )); //caja de texto
  }
  Container _passwordinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(Icons.password, color: Colors.grey),
              hintText: 'Password',
              labelText: 'Password',
              border: InputBorder.none),
          obscureText: true,
        )); //caja de texto
  }
   Container _repassinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(Icons.password, color: Colors.grey),
              hintText: 'Repassword',
              labelText: 'Repassword',
              border: InputBorder.none,
              ),
              obscureText: true,
        )); //caja de texto
  }
  Container _correotinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(Icons.email, color: Colors.grey),
              hintText: 'Correo',
              labelText: 'Correo',
              border: InputBorder.none),
        )); //caja de texto
  }



}
  