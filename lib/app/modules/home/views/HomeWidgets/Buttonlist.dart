// ignore_for_file: camel_case_types, file_names

import 'package:car_shop/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class buttonlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeController c = HomeController();
    return SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Obx(
        () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: c.buttonlisT
                .map(
                  (e) => Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            top: 2, bottom: 15, left: 7, right: 7),
                        child: GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Text(
                                e['title'].toString(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          // ignore: deprecated_member_use
                          color: Theme.of(context).colorScheme.onPrimary,
                        )),
                  ),
                )
                .toList()),
      ),
    ));
  }
}
