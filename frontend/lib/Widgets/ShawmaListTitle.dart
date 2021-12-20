import 'package:flutter/material.dart';
class ShawrmaListTitle extends StatefulWidget {
  const ShawrmaListTitle({ Key? key }) : super(key: key);

  @override
  State<ShawrmaListTitle> createState() => _ShawrmaListTitleState();
}

class _ShawrmaListTitleState extends State<ShawrmaListTitle> {
    bool iSshawrma = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
                            onTap: () {
                              setState(() {
                                iSshawrma = !iSshawrma;
                              });
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
                                                top: 10, left: 15,bottom: 10),
                                            child: Text("سناندوتش الشاورما",
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