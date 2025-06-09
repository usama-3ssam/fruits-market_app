import 'package:flutter/material.dart';

class ORTextWidget extends StatelessWidget {
  const ORTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 2,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'OR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
