import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CardWidgetTwo extends StatelessWidget {
  final String imageUrl;

  final String? imageName;

  const CardWidgetTwo({Key? key, required this.imageUrl, this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 20,
      shadowColor: AppTheme.primary,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/loading.gif'),
            width: double.infinity, //toma todo el ancho posible del dispositivo
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (imageName != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(
                imageName ?? 'No name',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
