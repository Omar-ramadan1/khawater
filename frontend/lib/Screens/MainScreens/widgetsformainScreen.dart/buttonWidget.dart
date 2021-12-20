import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
final String text;
final VoidCallback onpressed;
ButtonWidget(this.text,this.onpressed);
  @override
  Widget build(BuildContext context) {
    return FlatButton(

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                
                onPressed: onpressed,
                color: Colors.black,
              
               child: Text(text,style: TextStyle(
                 color: Colors.white
               ),),
               
               
               );
  }
}