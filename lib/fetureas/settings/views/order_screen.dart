import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
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
    return
        // isEmpty
        //     ? const EmptyScreen(
        //         title: 'you Don\'t have any Orders',
        //         subtitle: 'order some products to make me happy',
        //         buttontitle: 'Order Now',
        //         img: 'assets/images/box.png',
        //       )
        //     :
        Scaffold(
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
