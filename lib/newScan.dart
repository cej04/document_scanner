

import 'package:flutter/material.dart';

class totalScan extends StatefulWidget {
  const totalScan({super.key});

  @override
  State<totalScan> createState() => _totalScanState();
}

class _totalScanState extends State<totalScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Scanned Document List'),
        // actions: <Widget>[
        //   OutlinedButton(
        //     child: Text('Scanned : '),
        //     style: OutlinedButton.styleFrom(
        //       primary: Colors.white,
        //     ),
        //    // onPressed: () {},
        //     onPressed: () => Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (context) => const totalScan())),
        //   ),
          
        // ],
      ),
      body: Container());
  }
}