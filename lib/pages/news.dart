// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scitmain/color.dart';
import 'package:scitmain/pages/appbarmain.dart';
import 'package:scitmain/pages/listtilemenu.dart';
import 'package:scitmain/pages/maindrawer.dart';
import 'package:scitmain/pages/newsbody.dart';
import 'package:scitmain/pages/drawerheader.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: lightPurple,
          
          bottomNavigationBar: buildTabBar(),
       
          body: TabBarView(
            children: const [
              NewsBody(),
              NewsBody(),
              NewsBody(),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTabBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TabBar(
        tabs: const [
          Tab(
            text: 'News',
            icon: Icon(Icons.newspaper),
          ),
          Tab(
            text: 'Cirriculumns',
            icon: Icon(Icons.school),
          ),
          Tab(
            text: 'Contact',
            icon: Icon(Icons.phone),
          ),
        ],
      ),
    );
  }
}
