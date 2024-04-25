import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      
      home:Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
                    DrawerHeader(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                            child: Text('Drawer Header'),
                          ),

                           ListTile(
                          
                            title: const Text('Item 1'),
                            onTap: () {
                               print("yyyy");
                          },
      ),
            ],
          ),
        ),
        appBar: AppBar(
        
          title: const Text("Todo List"),
          actions: const [
             Padding(
            padding:  EdgeInsets.all(5.0),
            child: Icon(Icons.abc),
          ),  Padding(
            padding:  EdgeInsets.all(5.0),
            child: Icon(Icons.abc_sharp),
          )],
        ),
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    for(int i=0;i<5;i++)
                       Container( 
                           height: 70,
                           width: 70,
                           child: 
                            Center(
                           child:   Text("Le centre",style: TextStyle(
                              fontSize: 15,
                                         )
                                       ),
                           ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),),
                            ),
                          
                  ],
                           ),
               );  
          }, 
          ) 
           
        
      )
      );

  }
}


