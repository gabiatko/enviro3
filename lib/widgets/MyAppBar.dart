import 'package:flutter/material.dart';


class MyappBar extends StatelessWidget implements PreferredSizeWidget{
  final double height;
  final Color backgroundcolor;
  final String title;
  final Color color;

  const MyappBar({
    required this.height,
    required this.title,
    required this.backgroundcolor,
    required this.color,
  });

  @override
  Size get preferredSize=> Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      leading: Padding(
        padding: EdgeInsets.all(10.0),
        child: Image.asset(
          'assets/images/logo/ef_logo_transparent.png',
          scale: 0.5,
        ),
      ),
      title: Text(title,
        style: TextStyle(
          color: color,
          fontSize: 14.0,
          fontWeight: FontWeight.w800,
        ),
      ),
      backgroundColor: backgroundcolor,
    );
  }
}