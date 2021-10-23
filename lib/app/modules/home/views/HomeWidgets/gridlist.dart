import 'package:car_shop/app/modules/Detailed/views/detailed_view.dart';
import 'package:car_shop/app/modules/home/controllers/home_controller.dart';
import 'package:car_shop/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Gridlist extends StatelessWidget {
  Widget content(
      BuildContext context, String url, String title, String data, double x) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(.2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).colorScheme.onSecondary),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: SvgPicture.asset(
                  url,
                  height: x,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 10, height: 1, fontWeight: FontWeight.w100),
              ),
              Text(
                data,
                style: TextStyle(fontSize: 11),
              )
            ],
          )),
    );
  }

  // ignore: non_constant_identifier_names
  Widget card(BuildContext context, String url, Function f, String t1,
      String t2, String t3, String price, String mnau, String km, String mak) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.DETAILED, arguments: {
          'url': url,
        });
        print(url);
      },
      child: Container(
        height: 160,
        alignment: Alignment(0, 0),
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                ),
                Image.network(
                  url,
                  fit: BoxFit.cover,
                  height: 130,
                  width: double.infinity,
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 20,
                color: Colors.white.withOpacity(.5),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Text(
                          t1,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5.0, top: 2, left: 2, right: 2),
                        child: VerticalDivider(
                          color: Colors.black,
                          width: 1,
                          thickness: 1.5,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Text(t2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyText2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5.0, top: 2, left: 2, right: 2),
                        child: VerticalDivider(
                          color: Colors.black,
                          width: 1,
                          thickness: 1.5,
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Text(t3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyText2),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    content(context, "lib/Assets/RES/Home - ad1.svg", "السعر",
                        price, 11),
                    content(context, "lib/Assets/RES/Home - Ad2.svg",
                        "سنةالصنع", mnau, 11),
                    content(
                        context, "lib/Assets/RES/Home - Ad3.svg", "كم", km, 11),
                    content(context, "lib/Assets/RES/Home - Ad4.svg",
                        "مكفوله ل", mak, 11),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    HomeController c = HomeController();
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Obx(
        () => ResponsiveGridRow(
            children: c.GridlistData.map((e) => ResponsiveGridCol(
                sm: 6,
                xl: 6,
                xs: 6,
                md: 6,
                lg: 6,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    child: card(
                        context,
                        e['url'].toString(),
                        () {},
                        e['t1'].toString(),
                        e['t2'].toString(),
                        e['t3'].toString(),
                        e['price'].toString(),
                        e['mnau'].toString(),
                        e['km'].toString(),
                        e['mak'].toString())))).toList()),
      ),
    );
  }
}
