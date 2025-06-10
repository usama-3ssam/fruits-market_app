import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper.dart';
import 'package:my_app/fetureas/layouts/views/layout.dart';
import 'package:my_app/fetureas/layouts/widgets/feed_widget.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
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
        backgroundColor: Colors.white,
        title: const Text(
          'All Products',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.bag,
                  color: Colors.black,
                  size: 24,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.heart,
                  color: Colors.black,
                  size: 24,
                ),
              ],
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'search for product',
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.delete_left,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                // childAspectRatio: 4 / 3,
                children: List.generate(
                  10,
                  (index) {
                    return InkWell(
                      onTap: () {
                        NavToProductScreem(context);
                      },
                      child: const FeedWidget(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
