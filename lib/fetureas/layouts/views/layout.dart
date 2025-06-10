import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper.dart';

class HomeLayOut extends StatefulWidget {
  const HomeLayOut({super.key});

  @override
  HomeLayOutState createState() => HomeLayOutState();
}

class HomeLayOutState extends State<HomeLayOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConditionalBuilder(
        builder: (context) => screens[currentIndex],
        condition: true,
        fallback: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              size: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_grid_2x2,
              size: 32,
            ),
            label: 'Categ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.cart,
              size: 32,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.settings,
              size: 32,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
