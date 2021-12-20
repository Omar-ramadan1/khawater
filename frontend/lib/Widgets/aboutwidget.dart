import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              'Khwater demshqia',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Text(
                " ابلكيشن خواطر دمشقيه هو اسهل طريقه تطلب بيها اشهي الاكلات\nاصل الطعم الشامي في الاسكندريه من 2012  الان الاكل متعه فالمتعه\nدي لازم تكمل بانك تطلبها باسهل طريه ممكنه حتتعرف علي\nاصنافنا وعروضنا اليوميه حتلاقينا في خدمتك علطول            ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(":المميزات",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text(
                        "تشوف كل الاصناف والاسعار",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "تتعرف علي عروضنا الخاصه",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "تستفيد من خصومات حصريه  ",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "توفر وقتك وجهدك ورصيدك",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      //  Text("حتلاقي بيناتك متسجله بعد اول مره",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      );
  }
}