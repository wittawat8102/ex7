import 'package:flutter/material.dart';
import 'package:scitmain/pages/drawerheader.dart';
import 'package:scitmain/pages/listtilemenu.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
    required this.data,
  });
  final Map data;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawHeader(),
          ListTileMenu(
            icon: Icons.home,
            menuName: 'Home',
            routeName: '/mainnews',
            data: data,
          ),
          ListTileMenu(
            icon: Icons.newspaper,
            menuName: 'News',
            routeName: '/news',
            data: data,
          ),
          ListTileMenu(
            icon: Icons.school,
            menuName: 'Cirriculum',
            routeName: '/cirriculum',
            data: data,
          ),
          ListTileMenu(
            icon: Icons.phone,
            menuName: 'Contact',
            routeName: '/contact',
            data: data,
          ),
        ],
      ),
    );
  }
}
