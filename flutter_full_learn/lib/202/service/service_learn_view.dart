import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  @override
  void initState() {
    super.initState();
    name = 'Kaan';
    fetchPostItems();
  }

  Future<void> fetchPostItems() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;

      if (datas is List) {

        setState(() {
                  _items = datas.map((e) => PostModel.fromJson(e)).toList()});
      }
    }
    // ignore: avoid_print
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_items? [index].title ?? ''),
          );
        },
      ),
    );
  }
}
