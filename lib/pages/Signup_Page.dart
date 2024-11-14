import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // ignore: non_constant_identifier_names
 final List<String> gender= ['male','female'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
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
                          return value!.isEmpty ? 'Field Empty':null;
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
                          return value!.isEmpty ? 'Field Empty':null;
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
                          return value!.isEmpty ? 'Field Empty':null;
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
              

              Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: (){},
                      child: const Text('Create'),
                      color: Color.fromRGBO(106, 16, 122, 1),
                      textColor: Colors.white,
                    ),
                  ),
             
          ],
        ),
      ),
    );
  }
}


void onchaged(){

}