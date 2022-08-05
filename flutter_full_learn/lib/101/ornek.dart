import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrnekApp extends StatelessWidget {
  OrnekApp({Key? key}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  var color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Workshop"),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text(
              "K",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              debugPrint("Butona tıklandı");
            },
          ),
          
        ));
  }
}
