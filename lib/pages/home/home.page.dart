import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_compteur/models/produit.model.dart';
import 'package:flutter_compteur/pages/cart/cart.page.dart';
import 'package:flutter_compteur/pages/details/detail.page.dart';
import 'package:flutter_compteur/pages/home/components/categorie.home.component.dart';
import 'package:flutter_compteur/pages/home/components/produit.item.component.dart';
import 'package:flutter_compteur/utils/constants.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});
   static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      title: const Text(
        "Home Page",
      ),
    centerTitle: true,
      actions: [
            IconButton(
            icon: const Icon(Icons.shopping_cart,color: bbwTextColor),
            tooltip: 'Open shopping cart',
            onPressed: () {
                 Navigator.pushNamed(context, CartPage.routeName);
            },
          ),
        ], 
  ),
      drawer:  Drawer(
        child: ListView(
          children: [
              Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Home'),
                  onTap: (){
                    Navigator.pop(context);
                     Navigator.pushNamed(context, HomePage.routeName);
                  }
                ),])
          ],
        ),
      ),
      body:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: bbwDefaultPaddin),
                  child: Text(
                    "Women",
                    style:   TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  ),
            ),

               const CategorieComponent(),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(bbwDefaultPaddin),
                   child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: 
                      const  SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       mainAxisSpacing: bbwDefaultPaddin,
                       crossAxisSpacing: bbwDefaultPaddin,
                       childAspectRatio: 0.75,
                    ), 
                    itemBuilder: (context, index)  {
                        return ProductItem(
                          press: () {
                            Navigator.pushNamed(context,DetailProduitPage.routeName);
                          },
                         product: products[index]);
                    }),
                 ),
               )
            ]),
    );
  }
}