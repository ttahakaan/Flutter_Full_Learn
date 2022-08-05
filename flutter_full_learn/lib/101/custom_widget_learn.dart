import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.red,
          shape: const StadiumBorder()
          ),
          
          onPressed: () {}, child: Text("Food",
        style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
        ))
        
        ),
    );
  }
}
