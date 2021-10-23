// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'detailedwidgets/desdetailed.dart';
import 'detailedwidgets/destable.dart';
import 'detailedwidgets/imagecover.dart';
import 'detailedwidgets/title.dart';

class DetailedView extends StatefulWidget {
  DetailedView({Key? key}) : super(key: key);

  @override
  _DetailedViewState createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  // ignore: non_constant_identifier_names
  AnimationController _ColorAnimationController =
      AnimationController(vsync: AnimatedListState());
  // ignore: non_constant_identifier_names
  AnimationController _TextAnimationController =
      AnimationController(vsync: AnimatedListState());
  late Animation _colorTween;
  late Animation _iconColorTween;
  late Animation<Offset> _transTween;

  @override
  void initState() {
    _ColorAnimationController = AnimationController(
        vsync: AnimatedListState(), duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Color(0xff66697C))
        .animate(_ColorAnimationController);
    _iconColorTween = ColorTween(begin: Colors.black, end: Colors.black)
        .animate(_ColorAnimationController);

    _TextAnimationController = AnimationController(
        vsync: AnimatedListState(), duration: Duration(seconds: 0));

    _transTween = Tween(begin: Offset(-10, 40), end: Offset(-10, 0))
        .animate(_TextAnimationController);

    super.initState();
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 350);

      _TextAnimationController.animateTo(
          (scrollInfo.metrics.pixels - 350) / 50);
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: _scrollListener,
        child: Container(
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Imagecover(),
                    Tilte(),
                    Destable(),
                    Desdetailed(
                      desdata: '',
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                child: AnimatedBuilder(
                  animation: _ColorAnimationController,
                  builder: (context, child) => AppBar(
                    backgroundColor: _colorTween.value,
                    elevation: 0,
                    iconTheme: IconThemeData(
                      color: _iconColorTween.value,
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.5)),
                          child: SvgPicture.asset(
                            "lib/Assets/RES/Back.svg",
                            height: 18,
                          ),
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.5)),
                            child: Container(
                              margin: EdgeInsets.all(1),
                              child: SvgPicture.asset(
                                "lib/Assets/RES/Car Page - Share.svg",
                                height: 18,
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.5)),
                            child: SvgPicture.asset(
                              "lib/Assets/RES/Car Page - Fav.svg",
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
