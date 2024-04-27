import 'package:flutter/material.dart';
import 'package:flutter_compteur/utils/constants.dart';

class CategorieComponent extends StatefulWidget {
  const CategorieComponent({super.key});

  @override
  State<CategorieComponent> createState() => _CategorieComponentState();
}

class _CategorieComponentState extends State<CategorieComponent> {
    List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
    int selectedIndex = 0;
    @override
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: bbwDefaultPaddin),
      child: SizedBox(
        height: 45,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }
  
  buildCategory(int index) {
  return InkWell(
        onTap: (){
            setState(() {
              selectedIndex = index;
            });
          },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: bbwDefaultPaddin),
      child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                style:  TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? bbwTextColor : bbwTextColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: bbwDefaultPaddin / 3), //top padding 5
                height: 2,
                width: 30,
                color: selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ]),
      ),
  );
}

}

