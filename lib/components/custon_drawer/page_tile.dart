import 'package:flutter/material.dart';


class PageTile extends StatelessWidget {

  PageTile({required this.label,required this.iconData, required this.onTap, required this.highlihted});

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlihted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          color: highlihted ? Colors.purple : Colors.black54,
        ),
      ),
      leading: Icon(
        iconData,
        color: highlihted ? Colors.purple : Colors.black54,
      ),
      onTap: onTap,
    );
  }


}
