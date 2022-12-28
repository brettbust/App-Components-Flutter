import 'package:flutter/material.dart';
import 'package:components_app/router/app_routes.dart';
import 'package:components_app/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Components in Flutter')),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) => ListTile(
              leading: Icon(AppRoutes.menuOptions[index].icon,
                  color: AppTheme.lightTheme.iconTheme.color),
              title: Text(AppRoutes.menuOptions[index].name),
              onTap: () {
                Navigator.pushNamed(
                    context, AppRoutes.menuOptions[index].route);
              },
            )),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
