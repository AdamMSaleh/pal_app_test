// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pal_app/components/background.dart';
import 'package:pal_app/screens/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Background(
        y: true,
        x: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 13,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: 100,
                        margin:
                            const EdgeInsets.only(top: 40, left: 40, right: 40),
                        decoration: new BoxDecoration(
                          color: kPrimaryLightColor,
                          border:
                              Border.all(color: kPrimaryLightColor, width: 0.0),
                          borderRadius:
                              new BorderRadius.all(const Radius.circular(90)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 40, top: 30),
                          child: Text(
                            'Book a new section',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 13,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: 100,
                        margin:
                            const EdgeInsets.only(top: 40, left: 40, right: 40),
                        decoration: new BoxDecoration(
                          color: kPrimaryLightColor,
                          border:
                              Border.all(color: kPrimaryLightColor, width: 0.0),
                          borderRadius:
                              new BorderRadius.all(const Radius.circular(90)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 70, top: 30),
                          child: Text(
                            'My Calender',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
