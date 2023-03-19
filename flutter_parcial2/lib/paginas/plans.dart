import 'package:flutter/material.dart';

class plans extends StatefulWidget {
  const plans({super.key});

  @override
  State<plans> createState() => _plansState();
}

class _plansState extends State<plans> 
{
  @override
  Widget build(BuildContext context) 
  {
    return ListView
    (
      children: [
         //espacio
         SizedBox(
          height: 10,
        ),
       _imagen(),
        SizedBox(
          height: 10,
        ),
       _numtrajetainput(),
        SizedBox(
          height: 10,
        ),
       Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              child: _fecha(),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              child: _Codigo(),
            ),
          ],
        ),
         SizedBox(
          height: 10,
        ),
        _nombreinput()


       
      ],
    );
  }
  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Image.network("https://static.vecteezy.com/system/resources/previews/002/370/538/non_2x/cartoon-illustration-of-credit-card-free-vector.jpg"));
  }
  Container _numtrajetainput() 
  {
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
              hintText: '000-000-000-000-000',
              labelText: 'Numero de la tarejeta de credito',
              border: InputBorder.none),
        )); //caja de texto
  }

  Container _Codigo(){
     return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              hintText: '000',
              labelText: 'ultimos digitos',
              border: InputBorder.none),
        )
    );
  }
  Container _fecha() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(Icons.date_range_outlined, color: Colors.grey),
              hintText: 'YY / MM',
              labelText: 'Fecha',
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
              hintText: 'Ingrese nombre del propietario',
              labelText: 'Ingrese nombre del propietario',
              border: InputBorder.none),
        )); //caja de texto
}
}
  