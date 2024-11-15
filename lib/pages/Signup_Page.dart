import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomeScreen.dart';
import 'package:get/get.dart';

final _formKey = GlobalKey<FormState>();

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Signup Here',
              style: TextStyle(fontSize: 33,
              color: Color.fromRGBO(106, 16, 122, 1),),),
          
              const SizedBox(height: 15),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration:const InputDecoration(
                            labelText: 'Name',
                            //hintText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder()
                          ),
                          onChanged: ( String value ) {
                          },
                          validator: (value){
                            return value == null || value.isEmpty ? 'Field Empty': null;
                          },
                        ),
              ),
          
              const SizedBox(height: 15),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration:const InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder()
                          ),
                          onChanged: ( String value ) {
                          },
                          validator: (value){
                            return value == null || value.isEmpty ? 'Field Empty':null;
                          },
                        ),
              ),
          
              const SizedBox(height: 15),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration:const InputDecoration(
                            labelText: 'Confirm Password',
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder()
                          ),
                          onChanged: ( String value ) {
                          },
                          validator: (value){
                            return value == null || value.isEmpty ? 'Field Empty':null;
                          },
                        ),
              ),
              const SizedBox(height: 15,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Gender',
                      hintText: 'Select Gender',
                      prefixIcon: Icon(Icons.person_outline),
                      border: OutlineInputBorder(),
                    ),
                    items: ['Male', 'Female', 'Prefer not to say'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {},
                    validator: (value) {
                      return value == null || value.isEmpty ? 'Select Gender' : null;
                    },
                  ),
                ),
                
                const SizedBox(height: 15),
          
                 Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MaterialButton(
                        minWidth: double.infinity, 
                        onPressed: () async{
                          await Get.to(const Homescreen());
                          // if( _formKey.currentState == null && _formKey.currentState!.validate()){
                           
                          // }
                        },
                        color:Colors.purple,
                        textColor: Colors.white,                     
                        child: const Text('Create Account'),
                      ),
                    ),
               
            ],
          ),
        ),
      ),
    );
  }
}