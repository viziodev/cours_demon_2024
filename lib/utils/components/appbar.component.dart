import 'package:flutter/material.dart';
import 'package:flutter_compteur/pages/cart/cart.page.dart';

Widget appBarComponent( String text, IconButton iconButton) {
  return AppBar(
    title: Text(
      text,
    ),
    centerTitle: true,
    leading: IconButton(icon: iconButton, onPressed: () {}),
      actions: [
            IconButton(
            icon: const Icon(Icons.shopping_cart,color: Colors.black,),
            tooltip: 'Open shopping cart',
            onPressed: () {
               //   Navigator.pushNamed(context, CartPage.routeName);
            },
          ),
        ], 
  );
}


class AppBarComponent extends StatelessWidget {
  
   const AppBarComponent({super.key });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title:  Text("title"),
      actions: [
            IconButton(
            icon: const Icon(Icons.shopping_cart,color: Colors.black,),
            tooltip: 'Open shopping cart',
            onPressed: () {
                  Navigator.pushNamed(context, CartPage.routeName);
            },
          ),
        ], 
      );
  }
}