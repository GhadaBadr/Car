import 'dart:ui';

import 'package:car_shop/app/modules/Search/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Get.to(SearchView());
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).colorScheme.primary,
              border: Border.all(
                  color: Theme.of(context).colorScheme.background, width: 1.5),
            ),
            height: 45,
            margin: EdgeInsets.all(10),
            child: TextFormField(
                enabled: false,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ابحث عن سيارتك",
                  contentPadding:
                      EdgeInsets.only(left: 20, right: 45, bottom: 0),
                  hintStyle: Theme.of(context).textTheme.subtitle2,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: SvgPicture.asset(
                      "lib/Assets/RES/Home - Search.svg",
                    ),
                  ),
                  prefixIconConstraints:
                      BoxConstraints(maxHeight: 20, maxWidth: 20),
                ))),
      ),
    ));
  }
}
