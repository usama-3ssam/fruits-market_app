import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper.dart';
import 'package:my_app/fetureas/layouts/views/layout.dart';
import 'package:my_app/fetureas/layouts/widgets/on_sale_widget.dart';

class OnSaleScreen extends StatefulWidget {
  const OnSaleScreen({super.key});

  @override
  State<OnSaleScreen> createState() => _OnSaleScreenState();
}

class _OnSaleScreenState extends State<OnSaleScreen> {
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return
        // isEmpty
        //     ? const EmptyScreen(
        //         title: 'no product in sale yet',
        //         subtitle: 'Stay tuned',
        //         buttontitle: '',
        //         img: 'assets/images/box.png',
        //       )
        //     :
        Scaffold(
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
        title: InkWell(
          onTap: () {
            setState(() {
              isEmpty = !isEmpty;
            });
          },
          child: const Text(
            'Products on Sale',
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                      child: const OnSaleWidget(),
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
