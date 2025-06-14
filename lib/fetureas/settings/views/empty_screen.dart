// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
import 'package:my_app/fetureas/layouts/views/layout.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttontitle,
    required this.img,
  });

  final String title;
  final String subtitle;
  final String buttontitle;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            navTo(
              context,
              const HomeLayOut(),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(img),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Whoops!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.lightBlueAccent.shade100,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              textAlign: TextAlign.center,
              subtitle,
              style: TextStyle(
                color: Colors.lightBlueAccent.shade100,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10)),
              // width: double.infinity,
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    buttontitle,
                    style: TextStyle(
                      color: Colors.grey[600],
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
