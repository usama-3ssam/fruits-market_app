import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';

class ViewWidget extends StatefulWidget {
  const ViewWidget({super.key});

  @override
  State<ViewWidget> createState() => _ViewWidgetState();
}

class _ViewWidgetState extends State<ViewWidget> {
  final countController = TextEditingController();

  @override
  void initState() {
    countController.text = '1';
    super.initState();
  }

  @override
  void dispose() {
    countController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(img),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$1.87',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  CupertinoIcons.plus,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
