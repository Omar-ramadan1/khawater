import 'package:flutter/material.dart';

import 'widgetsformainScreen.dart/buttonWidget.dart';
import 'widgetsformainScreen.dart/textformfieldWidget.dart';
class SingUp extends StatelessWidget {
    final GlobalKey<FormState> _key =GlobalKey<FormState>();
      static const routename = '/SignUp';

        final TextEditingController _email = TextEditingController();

    final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb74093),
   body: Form(
        key:_key ,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 170,),
              Text("خواطر دمشقيه",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: TextFormFieldWidget(
                  _email,
                  "Enter your email",Icon(Icons.email),
                 (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                               if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                              return null;
                              },
                              false)
              ),
              SizedBox(
                height: 10,
              ),
                          Container(
                width: MediaQuery.of(context).size.width / 3,
             child: TextFormFieldWidget(
               _pass,
               "Enter your password",Icon(Icons.lock),   (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if(value.length >8){
                                return 'pleasw enter strong password';
                              }
                              return null;
             },
             true
             )
          
      
              ),
                    SizedBox(
                height: 10,
              ),
                  Container(
                width: MediaQuery.of(context).size.width / 3,
             child: TextFormFieldWidget(
               _confirmPass,
               "Confirm your password",Icon(Icons.lock),   (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if(value.length >8){
                                return 'please enter strong password';
                              }
                               if(value != _pass.text){
                                return 'password downt match';
                              }
                              return null;
             },
             true
             )
      
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width/8,
                child:  Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Text('already have an account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    ),
                    TextButton(onPressed: (){
                    }, child:  Text("Login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue
                  ),
                  ),
                  )
                  ],      
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/5,
              
              )
            ],
          ),
        ),
      )
    
    );
  }
}