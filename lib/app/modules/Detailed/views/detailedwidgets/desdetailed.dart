import 'package:car_shop/app/modules/Detailed/controllers/detailed_controller.dart';
import 'package:car_shop/app/modules/home/views/HomeWidgets/gridlist.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'carpagebutton.dart';

class Desdetailed extends StatelessWidget {
  final String desdata;

  const Desdetailed({required this.desdata});

  @override
  Widget build(BuildContext context) {
    DetailedController s = DetailedController();

    Gridlist g = Gridlist();
    return Column(children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(s.desdata[0]['desdata'].toString(),
                style: Theme.of(context).textTheme.headline4),
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffEDF1F3)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            width: 3,
                            color: Theme.of(context).colorScheme.primary)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://i.ibb.co/n34LNfd/child.jpg ',
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Flexible(
                    child: Text("يوكن للسيارات المعتمدة",
                        style: Theme.of(context).textTheme.headline4),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "كل السيارات",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(
            () => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: s.GridlistData.map((e) => Container(
                      width: 195,
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: g.card(
                          context,
                          e['url'].toString(),
                          () {},
                          e['t1'].toString(),
                          e['t2'].toString(),
                          e['t3'].toString(),
                          e['price'].toString(),
                          e['mnau'].toString(),
                          e['km'].toString(),
                          e['mak'].toString()))).toList()),
            ),
          )),
      Container(margin: EdgeInsets.only(top: 10), child: Carbutton())
    ]);
  }
}
