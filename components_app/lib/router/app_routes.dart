import 'package:flutter/material.dart';

import 'package:components_app/screens/screens.dart';

import 'package:components_app/models/menu_option.dart';

class AppRoutes {
  //estaticos para poderlos llamar con la clase
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //quito la ruta del home de aca
    MenuOption(
        route: 'listview1',
        icon: Icons.library_add,
        name: 'Listview1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.library_add_outlined,
        name: 'Listview2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.warning,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.account_circle,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.animation,
        name: 'Animated Screen',
        screen: AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input,
        name: 'Inputs Screen',
        screen: InputsScreen()),
    MenuOption(
        route: 'Slider',
        icon: Icons.slideshow_rounded,
        name: 'Slider and Checks',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listview_builder',
        icon: Icons.list,
        name: 'Infinite Scroll and Pull to Refresh',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({
      AppRoutes.initialRoute: (BuildContext context) => const HomeScreen()
    }); //agrego la ruta del home

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /*  static Map<String, Widget Function(BuildContext)> router = {
    'home': (BuildContext context) => const HomeScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //este metodo es llamado cuando no se encuentra la ruta
    //es llamado cuando no se encuentra la ruta
    print(settings);
    return MaterialPageRoute(
      builder: (BuildContext context) => const AlertScreen(),
    );
  }
}
