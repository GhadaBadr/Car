import 'package:car_shop/app/modules/Detailed/controllers/detailed_controller.dart';
import 'package:flutter/material.dart';

class Tilte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DetailedController s = DetailedController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 45, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                s.titlede[0],
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      s.titlede[1],
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  Text(
                    " د.ك ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.error),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 5),
                        child: Icon(
                          Icons.verified_user_outlined,
                          size: 25,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        s.titlede[2],
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
