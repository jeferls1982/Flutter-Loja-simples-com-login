import 'package:flutter/material.dart';
import 'package:loja/components/custon_drawer/custon_drawer_header.dart';
import 'package:loja/components/custon_drawer/page_section.dart';

class CustonDrawer extends StatelessWidget {
  const CustonDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            children: [
              CustonDrawerHeader(),
              PageSection(),
            ],
          ),
        ),
      ),
    );
  }
}
