import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper.dart';
import 'package:my_app/fetureas/layouts/widgets/on_sale_widget.dart';
import 'package:my_app/fetureas/layouts/widgets/our_product_widge.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Swiper(
                duration: 800,
                autoplayDelay: 8000,
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    swiperImg[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: swiperImg.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ViewAllButtom(
                fun: () {
                  // navTo(
                  //   context,
                  //   const OnSaleScreen(),
                  // );
                },
              ),
            ),
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Row(
                    children: [
                      TextWidget(
                        text: 'ON SALE',
                        color: Colors.red,
                        fontSize: 24,
                      ),
                      const Icon(
                        CupertinoIcons.plus_circled,
                        color: Colors.red,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                VerticalSpace(width: 5),
                Flexible(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .23,
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            // NavToProductScreem(context);
                          },
                          child: const OnSaleWidget(),
                        );
                      },
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  TextWidget(
                    text: 'Our Product',
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  ViewAllButtom(
                    fun: () {
                      // navTo(
                      //   context,
                      //   const AllProductScreen(),
                      // );
                    },
                  )
                ],
              ),
            ),
            const OurProductWidget(),
            HorizontalSpace(hight: 10)
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ViewAllButtom extends StatelessWidget {
  ViewAllButtom({
    super.key,
    required this.fun,
  });

  VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: fun,
      child: TextWidget(
        text: 'View All',
        color: Colors.blue,
        fontSize: 24,
      ),
    );
  }
}
