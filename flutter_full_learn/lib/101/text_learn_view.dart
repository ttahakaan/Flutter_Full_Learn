// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'font_settings/font_welcome.dart';

class TextLearnView extends StatelessWidget {
 TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Kaan";

  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ("Welcome $name ${name.length}"),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
                wordSpacing: 2,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                color: Colors.lightBlueAccent,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Text(("Hello's $name ${name.length}"),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle),
          Text(("Hello's $name ${name.length}"),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor)),
          Text(userName ?? ""),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
