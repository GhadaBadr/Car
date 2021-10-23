import 'package:car_shop/app/modules/Detailed/controllers/detailed_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/svg.dart';

class Imagecover extends StatelessWidget {
  Widget detailedcard(
      BuildContext context, String url, String title, String des) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.onSecondary),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: SvgPicture.asset(
                url,
                height: 25,
              ),
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
            ),
            Text(des, style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final url = routeArg['url'];
    DetailedController s = DetailedController();
    return Container(
      height: 410,
      child: Stack(
        children: [
          ImageSlideshow(
            isLoop: true,

            /// Width of the [ImageSlideshow].
            width: double.infinity,

            /// Height of the [ImageSlideshow].
            height: 315,

            /// The page to show when first creating the [ImageSlideshow].
            initialPage: 0,

            /// The color to paint the indicator.
            indicatorColor: Colors.transparent,

            /// The color to paint behind th indicator.
            indicatorBackgroundColor: Colors.transparent,

            /// The widgets to display in the [ImageSlideshow].
            /// Add the sample image file into the images folder
            children: [
              Image.network(
                url,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ],

            /// Called whenever the page in the center of the viewport changes.
            onPageChanged: (value) {},

            /// Auto scroll interval.
            /// Do not auto scroll with null or 0.
            autoPlayInterval: 3000,
          ),
          Positioned(
              bottom: 0,
              top: 280,
              left: 10,
              right: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    detailedcard(
                        context,
                        "lib/Assets/RES/Car Page - Slindr.svg",
                        "المحرك/سلندر",
                        "6"),
                    detailedcard(context, "lib/Assets/RES/Home - Ad2.svg",
                        "سنةالصنع", "2019"),
                    detailedcard(context, "lib/Assets/RES/Home - Ad3.svg",
                        "الممشي", "2000"),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
