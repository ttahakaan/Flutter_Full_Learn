import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/statefull_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: 
[
  Padding(
    padding: const EdgeInsets.only(right: 250),
    child: FloatingActionButton(
      backgroundColor: Colors.red,
                onPressed: () {
                  _pageController.previousPage(
                      duration: const Duration(seconds: 1), curve: Curves.slowMiddle);
                },
                child: const Icon(Icons.chevron_left),
              ),
  ),
          
          FloatingActionButton(
            backgroundColor: Colors.yellow,
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(seconds: 1), curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text("sinem"),
      ),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        children: [
          const ImageLearn(),
          const StatefullLearn(),
          Container(color: Colors.blue),
          Container(color: Colors.green),
        ],
      ),
    );
  }
}
