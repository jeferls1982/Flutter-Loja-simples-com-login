import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loja/screens/home/home_screen.dart';
import 'package:loja/stores/page_store.dart';

import 'package:mobx/mobx.dart';


class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();

  final PageStore pageStore = GetIt.I<PageStore>();


  @override
  void initState() {
    super.initState();
    reaction(
          (_) => pageStore.page,
          (int page) => pageController.jumpToPage(page)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          Container(color: Colors.black,),
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
          Container(color: Colors.yellow,),
          Container(color: Colors.green,)
        ],
      ),
    );
  }
}
