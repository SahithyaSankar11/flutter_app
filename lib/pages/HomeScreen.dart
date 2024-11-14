import 'package:flutter/material.dart';
import 'package:flutter_app/Components/My_text_field.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Login Page',
            style:TextStyle(
              fontSize: 33,
              color: Colors.cyanAccent,
              fontWeight: FontWeight.bold,
            )
            )
          ],
        ),
      ),
   
    );
  }
}



