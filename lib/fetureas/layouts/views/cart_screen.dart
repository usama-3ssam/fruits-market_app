import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
import 'package:my_app/fetureas/layouts/widgets/cart_widget.dart';
import '../../settings/views/empty_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  TextEditingController countController = TextEditingController(text: '1');
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? const EmptyScreen(
            title: 'Your Cart is Empty',
            subtitle: 'Add Some Product to your Cart to make me happy',
            buttontitle: 'Add Product',
            img: 'assets/images/cart.png',
          )
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: InkWell(
                onTap: () {
                  setState(() {
                    isEmpty = !isEmpty;
                  });
                },
                child: const Text(
                  'Cart(2)',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
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
                              onPressed: () {},
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Order Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'Total \$8.70',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const CartWidget();
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
