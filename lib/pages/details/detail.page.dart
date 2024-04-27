import 'package:flutter/material.dart';

class DetailProduitPage extends StatelessWidget {
  const DetailProduitPage({super.key});
   static String routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
    );
  }
}