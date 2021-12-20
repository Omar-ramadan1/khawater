import 'package:flutter/material.dart';

import 'listtile_widget_languages.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Catalan"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Espanol"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Slovenian"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Armenian"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("french"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("hebrew"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Italiano"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Albanian"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Arabic"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Espanol"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Icelandic"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Japanese"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Magyar"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Arabic"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Nederland"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("polski"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("portugues"),
        Divider(
          color: Colors.grey,
          height: 5,
          thickness: .8,
          indent: 5,
        ),
        Listtile_widget_language("Romana"),
      ],
    );
  }
}
