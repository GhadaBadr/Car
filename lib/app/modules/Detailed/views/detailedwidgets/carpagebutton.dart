import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Carbutton extends StatelessWidget {
  const Carbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.all(3),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.green[100], shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                "lib/Assets/RES/Car Page - Call.svg",
                                height: 17,
                                width: 17,
                                fit: BoxFit.scaleDown))),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.blue[100], shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "lib/Assets/RES/Car Page - Chat by WHatsapp.svg",
                              height: 15,
                              width: 15,
                              fit: BoxFit.scaleDown)),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(3),
                        height: 35,
                        decoration: BoxDecoration(
                            color: Color(0xff50536C),
                            borderRadius: BorderRadius.circular(50)),
                        child: GestureDetector(
                            onTap: () {},
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(right: 3.0),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        size: 25,
                                        color: Colors.white,
                                      )),
                                  Text("  موقع السيارة",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1),
                                  SizedBox(
                                    width: 5,
                                  )
                                ])),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(3),
                        height: 35,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.surface,
                                width: 1)),
                        child: GestureDetector(
                            onTap: () {},
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: SvgPicture.asset(
                                        "lib/Assets/RES/Car Page - Book.svg",
                                        height: 17,
                                        width: 17,
                                        fit: BoxFit.scaleDown),
                                  ),
                                  Text(
                                    "احجز السيارة",
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  )
                                ])),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
