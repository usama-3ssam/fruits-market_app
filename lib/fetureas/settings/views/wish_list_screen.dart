import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
import 'package:my_app/fetureas/layouts/views/layout.dart';
import 'package:my_app/fetureas/settings/widgets/wish_list_widget.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  TextEditingController countController = TextEditingController(text: '1');
  bool isEmpty = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
        // isEmpty
        //     ? const EmptyScreen(
        //         title: 'Your WishList is Empty',
        //         subtitle: 'Add some Product to your WishList',
        //         buttontitle: 'Add Product',
        //         img: 'assets/images/wishlist.png',
        //       )
        //     :
        Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {
                showAlertDialog(
                  context: context,
                  titleWidget: const Row(
                    children: [
                      Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                        size: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Clear WishList',
                      ),
                    ],
                  ),
                  contentWidget: const Text(
                    'your WishList will be cleared',
                  ),
                  actionsWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isEmpty = !isEmpty;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Ok',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: const Icon(
                Icons.delete_outline,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
        title: InkWell(
          onTap: () {
            setState(() {
              isEmpty = !isEmpty;
            });
          },
          child: const Text(
            'WishList',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        leading: InkWell(
          onTap: () {
            navTo(
              context,
              const HomeLayOut(),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
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
                child: const WishListWidget(),
              );
            },
          ),
        ),
      ),
    );
  }
}
