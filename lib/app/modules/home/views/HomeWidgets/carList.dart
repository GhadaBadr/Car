// ignore_for_file: file_names
import 'package:car_shop/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Carlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeController c = HomeController();
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: c.carlist.map<Widget>((e) {
                return Container(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 1,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                e['url'].toString(),
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            e['title'].toString(),
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      )),
                );
              }).toList(),
            ),
          ),
        ));
  }
}
