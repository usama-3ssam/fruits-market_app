import 'package:flutter/material.dart';

class TileItem extends StatelessWidget {
  const TileItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon_1,
    this.fun,
  });
  final String title;
  final String subtitle;
  final IconData icon_1;
  final Function()? fun;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        leading: Icon(
          icon_1,
          // CupertinoIcons.plus_circled,
          color: Colors.black,
          size: 30,
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right_sharp,
          color: Colors.black,
          size: 32,
        ),
      ),
    );
  }
}
