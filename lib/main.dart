import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorld());
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tytuł aplikacji"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                color: Colors.yellow,
                child: Text("pierwszy tekst")),
            SizedBox(height: 20),
            Row(
              children: [
                buildContainer("A"),
                buildContainer("B"),
                buildContainer("C"),
                buildContainer("D"),
              ],
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                color: Colors.yellow,
                child: Text("trzeci tekst")),
          ],
        ),
      ),
    );
  }

  Container buildContainer(String letter) {
    return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.yellow)),
                child: Text("Text "+letter),
              );
  }
}
