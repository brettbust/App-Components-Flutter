import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('AvatarScreen')),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.abc.net.au/cm/rimage/12120130-3x2-xlarge.jpg?v=2'),
              radius: 20,
            ),
          ),
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://www.abc.net.au/cm/rimage/12120130-3x2-xlarge.jpg?v=2'),
        radius: 150,
      )),
    );
  }
}
