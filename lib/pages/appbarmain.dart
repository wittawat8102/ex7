import 'package:flutter/material.dart';
import 'package:scitmain/color.dart';

class AppBarMain extends StatefulWidget implements PreferredSizeWidget {
  const AppBarMain({
    super.key,
    required this.data,
  });

  final Map data;

  @override
  State<AppBarMain> createState() => _AppBarMainState();

  @override
  // TODO: implement preferredSize

  Size get preferredSize => const Size.fromHeight(60);
}

class _AppBarMainState extends State<AppBarMain> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu, color: Theme.of(context).colorScheme.primary),
        ),
      ),
      titleTextStyle: Theme.of(context).textTheme.headlineSmall,
      elevation: 0,
      title: Text(
        'Home  : ${widget.data['user']}',
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: purplePrimary,
            ),
      ),
      centerTitle: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Icon(Icons.person,
                color: Theme.of(context).colorScheme.onPrimary),
          ),
        )
      ],
    );
  }
}
