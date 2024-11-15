import 'package:flutter/material.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _MyAppState();
}

class _MyAppState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //title: const Text('Dashboard'),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome !',
              style:TextStyle(
                fontSize: 33,
                color: Color.fromRGBO(106, 16, 122, 1),
                fontWeight: FontWeight.bold,
              )
              )
            ],
          ),
        ),
      ),
   
    );
  }
}



