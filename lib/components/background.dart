// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_be_immutable, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:pal_app/screens/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  bool x;
  bool y;
  Background({
    Key? key,
    required this.y,
    required this.x,
    required this.child,
    this.topImage = "assets/images/main_top.png",
    this.bottomImage = "assets/images/login_bottom.png",
  }) : super(key: key);

  final String topImage, bottomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: x == true
          // ignore: unnecessary_new
          ? new AppBar(
              backgroundColor: kPrimaryColor,
              title: Text("Pall application"),
              centerTitle: true,
            )
          : null,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 120,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(bottomImage, width: 120),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
