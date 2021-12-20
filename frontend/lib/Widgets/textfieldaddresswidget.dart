import 'package:flutter/material.dart';

class Textfieldaddres extends StatelessWidget {
  final String? intialValue;
  final String? labelText;

  ValueChanged<String>? onChanged;
  Widget widget;
  FormFieldValidator<String> validator;
  Textfieldaddres(this.intialValue, this.labelText, this.onChanged,
      this.widget, this.validator);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextFormField(
        initialValue: intialValue,
          //controller: controller,
          validator: validator,
          decoration: InputDecoration(
        //    hintText: hint,
            labelText: labelText,
            isDense: true,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 5)),
            prefixIcon: widget,
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow, width: 5),
            ),
          ),
          onChanged: onChanged),
    );
  }
}
