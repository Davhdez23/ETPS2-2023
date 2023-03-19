import 'package:flutter/material.dart';
import 'package:flutter_parcial2/paginas/groceries.dart';
import 'package:flutter_parcial2/paginas/plans.dart';
import 'package:flutter_parcial2/paginas/recipes.dart';
import 'package:line_icons/line_icons.dart';
import '../temas/colores.dart';
import 'package:flutter_parcial2/paginas/account.dart';

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
backgroundColor: blanco,
      body: getBody(),
      bottomNavigationBar: getfooter(),
    );
  }
Widget getBody()
{
  return IndexedStack(
    index: paginaIndex,
    children: [
      recipes(),
      plans(),
      groceries(),
      account()],
  );
}
Widget getfooter()
{
  List iconosItems=[
    Icons.food_bank,
    Icons.menu,
    LineIcons.shoppingCart,
    Icons.account_circle_sharp
  ];

  List textItems = [
    "Recipes",
    "Plans",
    "Groceries",
    "Account",
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
                  color: paginaIndex==index?primario:bgColor.withOpacity(0.5),
              ),

              SizedBox(height: 5,),
              Text(textItems[index],
              style: TextStyle(fontSize: 10,
              color: paginaIndex==index?primario:bgColor.withOpacity(0.5)
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