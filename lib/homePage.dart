import 'dart:math';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {



  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('nicDScanner'),
  actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.countertops,
        color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
      ),
      body: Center(
       
          child: Container(
            //color: Colors.deepOrangeAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                LayoutBuilder(builder: (context, constraints) {
                  var height = constraints.maxHeight;
                  var width = constraints.maxWidth/2;
      
                  return Icon(Icons.document_scanner_outlined, size: min(height, width));
                }),
          //       OutlinedButton(
          //   child: Text('Scan'),
          //   style: OutlinedButton.styleFrom(
          // //primary: Colors.green,
          //   ),
          //   onPressed: (){},
          //   // onPressed: () => Navigator.of(context)
          //   //     .push(MaterialPageRoute(builder: (context) => const NewScreen())),
          // ),
              ],
            ),
          ),
      
      ),
    floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        icon: Icon(Icons.add),
        label: Text('Scan'),
      ), 
    );
  }
}


