import 'package:flutter/material.dart';
import 'package:flutter_compteur/pages/cart/cart.page.dart';
import 'package:flutter_compteur/pages/details/detail.page.dart';
import 'package:flutter_compteur/pages/home/home.page.dart';
import 'package:flutter_compteur/utils/constants.dart';


void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
    
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: bbwTextColor),
       // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/home",
      routes: {
        '/home': (context) =>  HomePage(),
        '/detail': (context) => const DetailProduitPage(),
        '/cart': (context) => const CartPage(),
      },
       home: const HomePage()

      );

  }
}


