import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,

        appBar: AppBar(
          title: Text('I am an Owl'),
      ),
        body: Center( //alt + enter, wrap with center, will make your image in the center
          child: Image(
      //image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')
            image: AssetImage('images/owl.jpg')
    ,
    ),
        ),), );
  }
}

