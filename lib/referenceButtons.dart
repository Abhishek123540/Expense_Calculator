import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buttons'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all(Colors.amber),
              //   foregroundColor: MaterialStateProperty.all(Colors.black),
              // ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                onPrimary: Colors.black,
              ),
              onPressed: () => print("Pressed"),
              child: Text('An elevated button'),
            ),
            FilledButton(
              onPressed: () => print("Pressed"),
              child: Text('Filled Button'),
            ),
            OutlinedButton(
              onPressed: () => print("Pressed"),
              child: Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () => print("Pressed"),
              child: Text('Text Button'),
            ),
            /*BackButton(
              onPressed: () => print("Pressed"),
            ),
            IconButton(
                onPressed: () => print("Pressed"),
                icon: Hero(tag: Text('Heros'), child: Text('Ok'))),*/
          ],
        ),
      ),
    );
  }
}
