import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final elements = const [
    'Map',
    'Album',
    'Phone',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview2Screen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(elements[index]),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('Tapped on ${elements[index]}');
          },
        ),
        separatorBuilder: (_, __) => const Divider(
          color: Colors.black,
        ),
        itemCount: elements.length,
      ),
    ); // un listView es una lista de widgets que se despliegan en forma vertical
  }
}
