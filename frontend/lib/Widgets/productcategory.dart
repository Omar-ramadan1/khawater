import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  final Function categoryvarialbechange;
final String name;
ProductCategory(this.categoryvarialbechange,this.name);
  @override
  Widget build(BuildContext context) {
    return InkWell(
                            onTap: () {
                            categoryvarialbechange();
                            },
                            child: Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    decoration:
                                        BoxDecoration(color: Colors.grey),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 10, left: 15, bottom: 10),
                                            child: Text(name,
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                          Spacer(),
                                          Container(
                                              margin: EdgeInsets.only(),
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.arrow_drop_up,
                                                    size: 35,
                                                  )))
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          );
  }
}