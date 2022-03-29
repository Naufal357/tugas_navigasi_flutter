
import 'package:flutter/material.dart';
import 'package:tugas_navigasi_flutter/home_page.dart';
import 'package:tugas_navigasi_flutter/item_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => const ItemPage(),
      },
    ),
  );
}
