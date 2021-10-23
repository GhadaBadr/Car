// ignore_for_file: camel_case_types ,file_names

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      isLoop: true,

      /// Width of the [ImageSlideshow].
      width: double.infinity,

      /// Height of the [ImageSlideshow].
      height: 200,

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
          'https://i.ibb.co/KcndGFK/Image-5.png',
          fit: BoxFit.fill,
        ),
        Image.network(
          'https://i.ibb.co/B6sTsv8/Image-6.png',
          fit: BoxFit.fill,
        ),
      ],

      /// Called whenever the page in the center of the viewport changes.
      onPageChanged: (value) {},

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 3000,
    );
  }
}
