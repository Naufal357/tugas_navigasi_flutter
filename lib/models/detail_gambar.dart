import 'package:flutter/material.dart';

class DetailGambar extends StatefulWidget {
  final HeroTag;
  // ignore: use_key_in_widget_constructors
  const DetailGambar(this.HeroTag);

  @override
  State<DetailGambar> createState() => _DetailGambarState();
}

class _DetailGambarState extends State<DetailGambar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              child: Hero(
                  tag: widget.HeroTag,
                  child: Image(
                    image: AssetImage(widget.HeroTag),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
        ],
      ),
    );
  }
}
