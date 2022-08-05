import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;
  void incrementValue() {
    
    setState(() {
      countValue = countValue + 1;
    });
  }

  void deincrementValue() {
    
    setState(() {
      countValue = countValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: FloatingActionButton(
              onPressed: () {
                incrementValue();
              },
              child: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: FloatingActionButton(
              onPressed: () {
                deincrementValue();
              },
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
      body: Center(child: Column(
        children: [
          Title(color: Colors.white, child: const Text("Ay Oldu :)")),
          Text(countValue.toString(),style: Theme.of(context).textTheme.headline2,),
        ],
      )),
    );
  }
}
