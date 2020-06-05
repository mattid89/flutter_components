import 'dart:math';

import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Sample'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(   
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.red,
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.yellow,
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
              ],
            ),
 
                Expanded(
                  flex: 1,
                  
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 18,
                    padding: const EdgeInsets.all(8),
                    itemBuilder:(_, index) {
                      return Container(
                        height: 10,
                        color: Color.fromRGBO(
                          Random().nextInt(255), 
                          Random().nextInt(255), 
                          Random().nextInt(255), 
                          1
                        ),
                        child: const Center(child: Text('Entry A')),
                      );
                    },
                  ),
                ),
 
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                width: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              width: 120,
              height: 50,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
