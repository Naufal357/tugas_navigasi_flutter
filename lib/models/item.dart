import 'package:flutter/material.dart';

// ignore: camel_case_types
class item extends StatelessWidget {
  final String name;
  final int price;
  final String image;

  const item(
      {Key? key, required this.name, required this.price, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Item {
  final String name;
  final int price;
  final String image;

  Item(this.name, this.price,this.image);
}
