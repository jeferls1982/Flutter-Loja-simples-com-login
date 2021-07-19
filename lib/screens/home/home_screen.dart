import 'package:flutter/material.dart';
import 'package:loja/components/custon_drawer/custon_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustonDrawer(),
        appBar: AppBar(),
      ),
    );
  }
}
