import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Card')),
      ),
      body: ListView(
        children: const [
          CardWidget(),
          SizedBox(height: 20),
          CardWidgetTwo(
              imageUrl:
                  'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/NNC7TA7K2NG5HM2REZSAE244XE.jpg',
              imageName: 'Lamborghini Aventador'),
          SizedBox(height: 20),
          CardWidgetTwo(
              imageUrl:
                  'https://autotest.com.ar/wp-content/uploads/2021/06/AUTOS-MAS-CAROS-DEL-MUNDO-BUGATTI-DIVO-PORTADA.jpg',
              imageName: 'Bugatti Divo'),
          SizedBox(height: 20),
          CardWidgetTwo(
            imageUrl:
                'https://uss.com.ar/corporativo/wp-content/uploads/2019/05/Autos-empresariales.jpg',
          ),
        ],
      ),
    );
  }
}
