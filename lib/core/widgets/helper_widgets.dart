import 'package:flutter/material.dart';
import 'package:my_app/fetureas/layouts/views/cart_screen.dart';
import 'package:my_app/fetureas/layouts/views/categ_screen.dart';
import 'package:my_app/fetureas/layouts/views/home_screen.dart';
import 'package:my_app/fetureas/layouts/views/setting_scrren.dart';
import 'package:my_app/fetureas/layouts/widgets/product_widget.dart';

Future<void> showAlertDialog({
  context,
  controller,
  required titleWidget,
  required contentWidget,
  required actionsWidget,
}) async {
  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: titleWidget,
        content: contentWidget,
        actions: [actionsWidget],
      );
    },
  );
}

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  TextWidget({
    super.key,
    required this.text,
    required this.color,
    this.fontWeight,
    required this.fontSize,
  });

  String text;
  Color color;
  FontWeight? fontWeight;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}

Widget textFormFiled({
  required controller,
  required label,
  required keyboardType,
  required onChang,
  IconData? icon,
}) =>
    TextFormField(
      textAlign: TextAlign.start,
      style: const TextStyle(
        color: Colors.white,
      ),
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: icon != null
            ? IconButton(
                onPressed: () {
                  //suffixPressed!();
                },
                icon: Icon(
                  icon,
                  color: Colors.white,
                ),
              )
            : null,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        labelText: label,
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
      ),
      keyboardType: keyboardType,
      onChanged: onChang,
      maxLines: 1,
    );

int currentIndex = 0;
List<Widget> screens = [
  const HomeScreen(),
  const CategoryScreen(),
  const CartScreen(),
  const SettingsScreen(),
];

const List<Color> gridColors = [
  Color(0xff53B175),
  Color(0xffF8A44C),
  Color(0xffF7A593),
  Color(0xffD3B0E0),
  Color(0xffFDE598),
  Color(0xffB7DFF5),
];

const List<String> imgs = [
  'assets/images/cat/fruits.png',
  'assets/images/cat/grains.png',
  'assets/images/cat/nuts.png',
  'assets/images/cat/spices.png',
  'assets/images/cat/Spinach.png',
  'assets/images/cat/veg.png',
];

const List<String> swiperImg = [
  'assets/images/landing/buy-on-laptop.jpg',
  'assets/images/landing/buy-through.png',
  'assets/images/landing/buyfood.jpg',
  'assets/images/landing/grocery-cart.jpg',
  'assets/images/landing/store.jpg',
  'assets/images/landing/vergtablebg.jpg',
];
const List<String> swiperLogImg = [
  'assets/images/landing/buy-on-laptop.jpg',
  'assets/images/landing/buy-through.png',
  'assets/images/landing/buyfood.jpg',
  'assets/images/landing/grocery-cart.jpg',
  'assets/images/landing/store.jpg',
  'assets/images/landing/vergtablebg.jpg',
];
const List<String> title = [
  'Fruits',
  'Grains',
  'Nuts',
  'Spices',
  'Spinach',
  'vergtablebg',
];

const String img = 'assets/images/cat/veg.png';

void navTo(BuildContext context, widget) {
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
    builder: (context) {
      return widget;
    },
  ), (route) => false);
}

// ignore: non_constant_identifier_names
void NavToProductScreem(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ProductScreen(),
    ),
  );
}

// ignore: must_be_immutable
class HorizontalSpace extends StatelessWidget {
  HorizontalSpace({
    super.key,
    required this.hight,
  });

  double hight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
    );
  }
}

// ignore: must_be_immutable
class VerticalSpace extends StatelessWidget {
  VerticalSpace({
    super.key,
    required this.width,
  });

  double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
