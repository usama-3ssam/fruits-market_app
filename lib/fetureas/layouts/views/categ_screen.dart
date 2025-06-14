import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
import 'package:my_app/fetureas/layouts/views/categ_product_screen.dart';
import 'package:my_app/fetureas/layouts/widgets/categ_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Category Screen',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 4 / 4,
          children: List.generate(
            6,
            (index) {
              return InkWell(
                onTap: () {
                  navTo(
                    context,
                    const CategoryProductScreen(),
                  );
                },
                child: CatgWidget(
                  color: gridColors[index],
                  images: imgs[index],
                  title: title[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
