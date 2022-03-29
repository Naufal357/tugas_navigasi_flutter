import 'package:flutter/material.dart';
import 'package:tugas_navigasi_flutter/models/item.dart';

class HomePage extends StatelessWidget {
  final List<item> items = [
    const item(name: 'Kaos Bola', price: 500000, image: 'KaosBola.png'),
    const item(name: 'Kaos', price: 150000, image: 'kaos.png'),
    const item(name: 'Bannie Hat', price: 100000, image: 'BannieHat.png'),
    const item(name: 'Jaket', price: 400000, image: 'Jaket.png')
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFFICIAL STORE OF @aremafcofficial'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.name,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
              );
            }),
      ),
    );
  }
}
