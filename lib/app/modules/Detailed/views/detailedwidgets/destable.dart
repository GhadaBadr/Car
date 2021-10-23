import 'package:car_shop/app/modules/Detailed/controllers/detailed_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

// ignore: must_be_immutable
class Destable extends StatelessWidget {
  Widget rowcard(String title, String icon, String des, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        color: Theme.of(context).colorScheme.onSurface,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Icon(
                    IconData(int.parse(icon), fontFamily: 'MaterialIcons'),
                    size: 22,
                  ),
                ),
                Text(title,
                    style: TextStyle(height: 1, fontWeight: FontWeight.bold)),
              ],
            ),
            if (des != "")
              Container(
                child: Center(
                  child: Text(
                    des,
                    textAlign: TextAlign.center,
                    style: TextStyle(height: 1, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (des == "")
              Container(
                  child: Icon(
                Icons.check,
                size: 22,
              )),
            Container(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    DetailedController s = DetailedController();

    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10, right: 25),
      child: Obx(
        () => Column(
            children: s.colList
                .map((e) => Container(
                    child: rowcard(e['title'].toString(), e['icon'].toString(),
                        e['des'].toString(), context)))
                .toList()),
      ),
    );
  }
}
