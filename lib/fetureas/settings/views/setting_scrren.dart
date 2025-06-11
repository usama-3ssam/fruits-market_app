import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
import 'package:my_app/fetureas/auth/views/login_screen.dart';
import 'package:my_app/fetureas/settings/views/order_screen.dart';
import 'package:my_app/fetureas/settings/views/viewed_product_screen.dart';
import 'package:my_app/fetureas/settings/views/wish_list_screen.dart';
import 'package:my_app/fetureas/settings/widgets/list_tile_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  TextEditingController addressController =
      TextEditingController(text: 'Your Address');

  @override
  void dispose() {
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Settings Screen',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi, ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'My Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'usamaesam@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.black,
            width: double.infinity,
          ),
          const SizedBox(
            height: 50,
          ),
          TileItem(
            fun: () async {
              showAlertDialog(
                context: context,
                titleWidget: const Text(
                  'Address',
                ),
                contentWidget: TextField(
                  controller: addressController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: addressController.text,
                  ),
                ),
                actionsWidget: TextButton(
                  onPressed: () {
                    setState(() {
                      addressController.text;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              );
            },
            title: 'Address',
            subtitle: addressController.text,
            icon_1: CupertinoIcons.person,
          ),
          TileItem(
            fun: () {
              navTo(
                context,
                const OrderScreen(),
              );
            },
            title: 'Orders',
            icon_1: CupertinoIcons.bag,
            subtitle: '',
          ),
          TileItem(
            fun: () {
              navTo(
                context,
                const WishListScreen(),
              );
            },
            title: 'Wishlist',
            icon_1: CupertinoIcons.heart,
            subtitle: '',
          ),
          TileItem(
            fun: () {
              navTo(
                context,
                const ViewScreen(),
              );
            },
            title: 'Viewed',
            icon_1: CupertinoIcons.eye,
            subtitle: '',
          ),
          const TileItem(
            title: 'Forget Password',
            icon_1: CupertinoIcons.lock,
            subtitle: '',
          ),
          const TileItem(
            title: 'Themes',
            icon_1: CupertinoIcons.brightness_solid,
            subtitle: '',
          ),
          TileItem(
            fun: () {
              showAlertDialog(
                context: context,
                titleWidget: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.square_arrow_up_on_square,
                      color: Colors.red,
                      size: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'signOut',
                    ),
                  ],
                ),
                contentWidget: const Text(
                  'Do you want to signOut',
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
                        navTo(
                          context,
                          const LogInScreen(),
                        );
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
            title: 'LogOut',
            icon_1: CupertinoIcons.square_arrow_right,
            subtitle: '',
          ),
        ],
      ),
    );
  }
}
