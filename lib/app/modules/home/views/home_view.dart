import 'package:badges/badges.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'HomeWidgets/Buttonlist.dart';
import 'HomeWidgets/Slider.dart';
import 'HomeWidgets/carList.dart';
import 'HomeWidgets/gridlist.dart';
import 'HomeWidgets/search.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset("lib/Assets/RES/Home - menu.svg",
                    height: 15, width: 15, fit: BoxFit.scaleDown)),
          );
        }),
        title: Text(''),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.5),
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stops: [0, 0.2, 0.8, 1],
          )),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Badge(
                position: BadgePosition.topStart(start: 1, top: -5),
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 2),
                badgeContent: Text(
                  '2',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 10),
                ),
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                )),
          )
        ],
      ),
      body: ListView(children: [
        Carlist(),
        slider(),
        search(),
        buttonlist(),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Gridlist(),
        )
      ]),
      bottomNavigationBar: SizedBox(
          height: 120,
          child: Container(
              width: double.infinity,
              child: Image.network(
                "https://i.ibb.co/KcndGFK/Image-5.png",
                fit: BoxFit.cover,
              ))),
    );
  }
}
