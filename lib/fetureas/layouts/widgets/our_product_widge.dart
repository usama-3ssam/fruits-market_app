import 'package:flutter/material.dart';
import 'package:my_app/fetureas/layouts/widgets/feed_widget.dart';

class OurProductWidget extends StatelessWidget {
  const OurProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // childAspectRatio: 4 / 3,
        children: List.generate(
          4,
          (index) {
            return InkWell(
              onTap: () {
                // NavToProductScreem(context);
              },
              child: const FeedWidget(),
            );
          },
        ),
      ),
    );
  }
}
