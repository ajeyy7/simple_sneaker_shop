import 'package:flutter/material.dart';

class My_List_Tile extends StatelessWidget {
  final Widget icon;
  final String text;
  final void Function()? ontap;

  const My_List_Tile(
      {super.key, required this.ontap, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: ListTile(
        leading: icon,
        title: Text(text),
        onTap: ontap,
      ),
    );
  }
}
