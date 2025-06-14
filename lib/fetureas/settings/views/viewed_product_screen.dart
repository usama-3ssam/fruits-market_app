import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
import 'package:my_app/fetureas/settings/views/empty_screen.dart';
import 'package:my_app/fetureas/layouts/views/layout.dart';
import 'package:my_app/fetureas/settings/widgets/viewed_product_widget.dart';

class ViewedProductsScreen extends StatefulWidget {
  const ViewedProductsScreen({super.key});

  @override
  ViewedProductsScreenState createState() => ViewedProductsScreenState();
}

class ViewedProductsScreenState extends State<ViewedProductsScreen> {
  TextEditingController countController = TextEditingController(text: '1');
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? const EmptyScreen(
            title: 'You don\'t see any Product',
            subtitle: 'See some Products',
            buttontitle: 'See Products',
            img: 'assets/images/history.png',
          )
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.white,
              title: InkWell(
                onTap: () {
                  setState(() {
                    isEmpty = !isEmpty;
                  });
                },
                child: const Text(
                  'History',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                  color: Colors.black,
                ),
              ),
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
                              CupertinoIcons.delete,
                              color: Colors.red,
                              size: 24,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Clear Carts',
                            ),
                          ],
                        ),
                        contentWidget: const Text(
                          'your Carts will be cleared',
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
                      size: 32,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const ViewWidget();
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
