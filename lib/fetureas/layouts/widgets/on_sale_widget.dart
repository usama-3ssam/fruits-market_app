import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnSaleWidget extends StatelessWidget {
  const OnSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: Image.asset(
                      'assets/images/cat/veg.png',
                      height: MediaQuery.of(context).size.width * 0.21,
                      width: MediaQuery.of(context).size.width * .18,
                    ),
                  ),
                  const SizedBox(),
                  const Column(
                    children: [
                      Text(
                        '1KG',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.bag,
                            color: Colors.black,
                            size: 24,
                          ),
                          Icon(
                            CupertinoIcons.heart,
                            color: Colors.black,
                            size: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '\$.99',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '\$1.87',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
