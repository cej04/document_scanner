import 'dart:math';

import 'package:document_scanner/newScan.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key, required this.title});

  final String title;

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var _textFieldController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nicDScanner'),
        actions: <Widget>[
          OutlinedButton(
            child: Text('Scanned : '),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
            ),
           // onPressed: () {},
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const totalScan())),
          ),
          // IconButton(
          //   icon: Icon(
          //     Icons.countertops,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {
          //     // do something
          //   },
          // )
        ],
      ),
      body: Center(
        child: Container(
          //color: Colors.deepOrangeAccent,
          child: LayoutBuilder(builder: (context, constraints) {
            var height = constraints.maxHeight;
            var width = constraints.maxWidth / 2;

            return Icon(Icons.document_scanner_outlined,
                size: min(height, width));
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {

        },
        icon: Icon(Icons.add),
        label: Text('New Scan'),
      ),
    );
  }
  
 
}
