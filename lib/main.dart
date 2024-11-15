import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomeScreen.dart';
import 'package:flutter_app/pages/Signup_Page.dart';
import 'package:get/get.dart';

final _formKey = GlobalKey<FormState>();
final TextEditingController _emailcontroller = TextEditingController();
final TextEditingController _passwordcontroller = TextEditingController();


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Login',
            style:TextStyle(
              fontSize: 33,
              color: Color.fromRGBO(106, 16, 122, 1),
              fontWeight: FontWeight.bold,
            )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Form(
                key: _formKey,
                child: Column(children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:const InputDecoration(
                      labelText: 'Email here',
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()
                    ),
                    // onChanged: ( String value ) {
                    // },
                    validator: (value) {
                      return value == null || value.isEmpty ? 'Field Empty' : null;
                    },
                  ),
                  const SizedBox(height: 30),
              
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration:const InputDecoration(
                      labelText: 'Password here',
                      //hintText: 'Password',
                      prefixIcon: Icon(Icons.password_outlined),
                      border: OutlineInputBorder()
                    ),
                    onChanged: ( String value ) {
              
                    },
                    validator: (value){
                      return value!.isEmpty ? 'Field Empty':null;
                    },
                  ),

                  const SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {                    
                    if (_formKey.currentState!.validate()) {
                      Get.to(const Homescreen());
                     
                    }
                  },
                      color: const Color.fromRGBO(106, 16, 122, 1),
                      textColor: Colors.white,
                      child: const Text('Submit'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: (
                      ){
                        Get.to(const SignupPage());
                      },
                      color: const Color.fromRGBO(106, 16, 122, 1),
                      textColor: Colors.white,
                      child: Text('Signup here'),
                      ),
                  )
              
                ],)
              ),
            )
          ],
        ),
      ),
   
    );
  }
}


