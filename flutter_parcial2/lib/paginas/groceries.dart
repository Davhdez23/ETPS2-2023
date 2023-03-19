import 'package:flutter/material.dart';
import 'Producto.dart';

class Comida extends StatelessWidget {
   Comida({super.key});


  List productos = [
    {
      "Nombre": "Comida Mexicana",
      "Imagen": "https://th.bing.com/th/id/OIP.934tcCVkCLDunwMRp8TWggHaFq?w=206&h=180&c=7&r=0&o=5&pid=1.7",
      "Precio": "10.00"
    },
    {
      "Nombre": "Comida Vegana",
      "Imagen": "https://th.bing.com/th/id/OIP.fTIOWO0WjB_hpFk3wnRaTAHaEK?pid=ImgDet&rs=1",
      "Precio": "15.00"
    },
    {
      "Nombre": "Comida China",
      "Imagen": "https://th.bing.com/th/id/OIP.jJk7-B3r5WOCvnSNZGuU-gHaE8?pid=ImgDet&w=1440&h=962&rs=1",
      "Precio": "25.00"
    },
    
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