import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_compteur/models/tache.model.dart';

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
      title: 'ToDo App',
       home: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFFEEEFF5),
            elevation: 0,
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,  children: [
            const  Icon(
                Icons.menu,
                color: Color(0xFF3A3A3A),
                size: 30,
              ),
              Container(
                height: 30,
                width: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/avatar.jpeg'),
                ),
              ),
            ]),
    ),
    body:  Stack(
      children: [
           Container(
             padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                  Container(
                     margin: const EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                        ),
                    child: const Text(
                          'Liste des Taches ',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),),
             for(Tache tache in Tache.todoList())
                   Padding(
                     padding: const EdgeInsets.only(bottom: 10),
                     child: Container(
                     
                      child: ListTile(
                       contentPadding:const  EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                       tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20),
                     
                       ),
                                title:  Text(
                                    "${tache.todoText}",
                                      style:  TextStyle(
                                        fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                         color:const  Color(0xFF3A3A3A),
                                         decoration: tache.isDone?  TextDecoration.lineThrough:null,
                                      ),
                               ),
                                 trailing: Container(
                                    padding: const EdgeInsets.all(0),
                                    margin: const EdgeInsets.symmetric(vertical: 12),
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                     child: IconButton(
                                          color: Colors.white,
                                          iconSize: 18,
                                          icon: Icon(Icons.delete),
                                          onPressed: () {
                                            // print('Clicked on delete icon');
                                          
                                          },
                                        ),
                             ),
                     )),
                   )     
                  
                ],) 
                ,),
                Align(
                   alignment: Alignment.bottomCenter,
                   child: 
                Row(
                  children: [
                      Expanded(
                        child: Container(
                           margin: const EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                          left: 20,
                                            ),
                        padding:const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 4,
                        ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                                            ],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                          child:const TextField(
                               decoration:  InputDecoration(
                                    hintText: 'Nouvelle Tache',
                                    border: InputBorder.none),
                              ),
                     
                                          ),
                      ),
 Container(
                margin: const EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                child: ElevatedButton(
                  child:  Text('+',
                    style:  TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () {
                   
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(60, 60),
                    elevation: 10,
                    
                  ),
                ),
              ),

                  ],), 
                )

        
         
          
    ]
   )
   
       ),
      );

  }
}


