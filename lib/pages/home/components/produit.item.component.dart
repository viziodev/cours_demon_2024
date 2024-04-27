import 'package:flutter/material.dart';
import 'package:flutter_compteur/models/produit.model.dart';
import 'package:flutter_compteur/utils/constants.dart';
class ProductItem extends StatelessWidget {  
  final  Product product;
  final VoidCallback press;


  const ProductItem({super.key, required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
            child: Container(
              padding: const EdgeInsets.all(bbwDefaultPaddin),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image),
                ),
            ),
          ),
         Padding(
            padding: const EdgeInsets.symmetric(vertical: bbwDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              product.title,
              style: const TextStyle(color: bbwTextLightColor),
            ),
          ),
          Text(
            "${product.price}CFA",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )  
          ]
          );
  }
}