// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key, textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = "Create your first notes";
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Image.asset("assets/apple.png", height: 250),
            const _Titlewidget(title: title),
            const Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(),
            ),
            ElevatedButton(onPressed: () {}, child: SizedBox(
              height: 50,
              
              
              child: Center(child: Text("Create a note",
              
              style: Theme.of(context).textTheme.headline5,
              
              
              )))),
              TextButton(onPressed: (){}, child: const Text("İmport note")),
              const SizedBox(height: 50)

          ],
        ),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    // ignore: unused_element
    this.textAlign = TextAlign.center,
  }) : super(key: key);
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Add a note" * 8,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _Titlewidget extends StatelessWidget {
  const _Titlewidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}
