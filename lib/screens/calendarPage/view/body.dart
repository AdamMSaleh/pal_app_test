// ignore_for_file: prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import '../../../color/app_color.dart';
import '../../constants.dart';
import '../components/box.dart';
import '../components/dialog_informtion.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Calender"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //* first row
                      Container(
                          //* border
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: kPrimaryColor, width: 2),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: Text("hour",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: text("S"),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: text("M"),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: text("TH"),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: text("W"),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: text("T"),
                                ),
                              ],
                            ),
                          )),
                      //* 2 row
                      Container(
                          //* border
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: kPrimaryColor, width: 1),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: Text("9",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                ),
                                Box(
                                  g: true,
                                  onTap: () {
                                    return showDialog(
                                        context: context,
                                        builder: (context) {
                                          return BoxDialog(
                                            text: "conditions in C#",
                                            name: "Rawan",
                                          );
                                        });
                                  },
                                  child: Text(
                                    " C# class with Rawan",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          )),
                      //* row 3
                      Container(
                          //* border
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: kPrimaryColor, width: 1),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: Text("11",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: true,
                                  onTap: () {
                                    return showDialog(
                                        context: context,
                                        builder: (context) {
                                          return BoxDialog(
                                            text: "conditions in C#",
                                            name: "Rawan",
                                          );
                                        });
                                  },
                                  child: Text(
                                    " C# class with Rawan",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      //* row4
                      Container(
                          //* border
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: kPrimaryColor, width: 1),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: Text("1",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: true,
                                  onTap: () {
                                    return showDialog(
                                        context: context,
                                        builder: (context) {
                                          return BoxDialog(
                                            text: "conditions in java",
                                            name: "Ahmad",
                                          );
                                        });
                                  },
                                  child: Text(
                                    "Java class with Ahmad",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          )),
                      //* row 5
                      Container(
                          //* border
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: kPrimaryColor, width: 1),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Box(
                                  g: false,
                                  onTap: () {},
                                  child: Text("3",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                                Box(
                                  g: false,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }

  text(String x) {
    return Text(
      x,
      style: TextStyle(color: Colors.white, fontSize: 25),
    );
  }
}
