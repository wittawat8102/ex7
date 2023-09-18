import 'package:flutter/material.dart';
import 'package:scitmain/color.dart';

class ListTileMenu extends StatelessWidget {
  final IconData icon;
  final String menuName;
  final String routeName;
  final Map data;

  const ListTileMenu({
    super.key,
    required this.icon,
    required this.menuName,
    required this.routeName,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: purplePrimary,
      ),
      title: Text(
        menuName,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 18,
              color: purplePrimary,
            ),
      ),
      onTap: () {
        Navigator.pushNamed(context, routeName, arguments: data);
      },
    );
  }
}
