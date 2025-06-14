// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class CatgWidget extends StatelessWidget {
  const CatgWidget(
      {super.key,
      required this.color,
      required this.images,
      required this.title});

  final Color color;
  final String images;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: color.withOpacity(.2),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset(
              images,
              height: MediaQuery.of(context).size.height * 0.16,
              // width: MediaQuery.of(context).size.width * 7.7,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
