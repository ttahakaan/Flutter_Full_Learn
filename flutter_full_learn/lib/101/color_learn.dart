import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(color: ColorsItems.bordeaux, child: const Text("Data")),
    );
  }
}

class ColorsItems {
 static const Color bordeaux = Color(0xff650118);
  

  



}
