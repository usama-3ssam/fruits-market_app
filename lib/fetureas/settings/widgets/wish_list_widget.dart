import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';

class WishListWidget extends StatelessWidget {
  const WishListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              img,
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width * .23,
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.delete_outline,
                      color: Colors.black,
                      size: 26,
                    ),
                    Icon(
                      CupertinoIcons.heart,
                      color: Colors.red,
                      size: 22,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Al_Quds',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$.99',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
