import 'package:flutter/material.dart';
import 'Producto.dart';

class Cocina extends StatelessWidget {
   Cocina({super.key});


  List productos = [
    
    {
      
      "Nombre": "Juego de Licuadora",
      "Imagen": "https://cloudfront-eu-central-1.images.arcpublishing.com/prisa/W7QPLKSERKCOKTIRQD5PUM7ZUM.jpg",
      "Precio": "25.00"
    },
    {
      "Nombre": "Cafeteras",
      "Imagen": "https://th.bing.com/th/id/R.a1191778e4b0bbd47967b586eacb147d?rik=KklSs0HBl4jG6A&pid=ImgRaw&r=0",
      "Precio": "45.00"
    },
    {
      "Nombre": "Horno microondas",
      "Imagen": "https://th.bing.com/th/id/R.3d1b828247e4c0dc9081d422dad17724?rik=n0wswZ4SunlUeA&riu=http%3a%2f%2fwww.mifamiliamagazine.net%2fwp-content%2fuploads%2f2013%2f02%2fME179KFETSR_MWFILKTSS-1170x762.jpg&ehk=EhzcY%2bddMoE8%2fjP4DdowYaAJZvoUeauL7U%2fTCo%2bLE9Y%3d&risl=&pid=ImgRaw&r=0",
      "Precio": "52.00"
    },
    {
      "Nombre": "Juego de cacerolas",
      "Imagen": "https://th.bing.com/th/id/OIP.-ztXSwBT7n1Ucf0UYVDouQHaHa?pid=ImgDet&rs=1",
      "Precio": "10.00"
    }
  ];

  @override
  Widget build(BuildContext context) {
    
    return 
    Container(
      
      padding: EdgeInsets.all(10),
      
      child: ListView(
        
        children: 
        
          List.generate(
            
            productos.length
          , 
          (index) {
            return Column(
              children: [
                Container(child: ProductosItem(productos[index]["Nombre"],productos[index]["Imagen"],productos[index]["Precio"])),
                Container(height: 5,)
              ],
            );
          }
          ),
        
      ),
    );
        

  }
}
