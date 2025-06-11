import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            width: MediaQuery.of(context).size.width * .4,
            child: Image.asset(img),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title x23',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'paid \$1.87',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Text(
            '8/7/20023',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
