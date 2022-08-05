import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
            onPressed: () {},
            child: Text("Save", style: Theme.of(context).textTheme.subtitle1),
          ),
          const ElevatedButton(onPressed: null, child: Text("Data")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: (){
              // servise istek at
              //sayfanın rengini düzenle
            },
            child: const Icon(Icons.add),
          ),
          InkWell(onTap: () {}, child: const Text("custom")),
        ],
      ),
    );
  }
}
