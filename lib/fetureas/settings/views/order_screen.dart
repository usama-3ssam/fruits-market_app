import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
import 'package:my_app/fetureas/auth/views/empty_screen.dart';
import 'package:my_app/fetureas/layouts/views/layout.dart';
import 'package:my_app/fetureas/settings/widgets/order_widget.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  OrderScreenState createState() => OrderScreenState();
}

class OrderScreenState extends State<OrderScreen> {
  TextEditingController countController = TextEditingController(text: '1');
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? const EmptyScreen(
            title: 'you Don\'t have any Orders',
            subtitle: 'order some products to make me happy',
            buttontitle: 'Order Now',
            img: 'assets/images/box.png',
          )
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
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
                              'Clear Ordered Product',
                            ),
                          ],
                        ),
                        contentWidget: const Text(
                          'your Orders will be cleared',
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
                  'Your Orders',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
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
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const OrderWidget();
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
