import 'package:flutter/material.dart';

class OrnekUygulama extends StatelessWidget {
  const OrnekUygulama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            
          }, child: const Text("Taha")),
          ElevatedButton(onPressed: () {
            
          }, child: const Text("Kaan")),
          ElevatedButton(onPressed: () {
            
          }, child: const Text("Kutal"))
        ],
      ),
    );
  }
}
