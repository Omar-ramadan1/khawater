import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class TextFormFieldWidget extends StatelessWidget {
    final TextEditingController? controller;

final String text;
final Widget widget;
final FormFieldValidator<String>? validator;
final bool obscureText;
TextFormFieldWidget(this.controller,this.text,this.widget,this.validator,this.obscureText);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
                obscureText: obscureText,
                validator:validator ,
                decoration: InputDecoration(
                  hintText: text,
                    prefixIcon: widget,
                    filled: true,
                    fillColor: Colors.orange,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white),
                        ),
                        ),
              );
  }
}