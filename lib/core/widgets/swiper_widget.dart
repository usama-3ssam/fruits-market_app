import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'helper_widgets.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Swiper(
      duration: 800,
      autoplayDelay: 8000,
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          swiperLogImg[index],
          fit: BoxFit.cover,
        );
      },
      itemCount: swiperLogImg.length,
    );
  }
}
