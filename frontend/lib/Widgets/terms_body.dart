import 'package:flutter/material.dart';

class TermBody extends StatelessWidget {
  const TermBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.grey),
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 110, left: 10, right: 10, bottom: 80),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              "طبقا لشروط واحكام فروع خواطر دمشق  \n نوفر لك جوده عاليه وسرعه توصيل الطلبات\n",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
        ),
      );
  }
}