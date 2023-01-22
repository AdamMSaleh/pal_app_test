// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:pal_app/screens/home/components/header.dart';

import '../../MasterPage/Master_page_screen.dart';
import '../../calendarPage/view/body.dart';
import '../../constants.dart';
import '../../userprofile/logout.dart';
import '../../userprofile/reservations.dart';
import '../../userprofile/setting.dart';
import '../components/buton_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(
          child: Column(
        children: [
          const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/profile.png")),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              "Heba Taher Wezwazi",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ),
          const Divider(),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Setting();
                    },
                  ),
                );
              },
              leading: const Icon(
                (Icons.notification_add),
                color: kPrimaryColor,
              ),
              title: const Text(
                "Notification",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return reservations();
                    },
                  ),
                );
              },
              leading: const Icon(
                (Icons.account_balance),
                color: kPrimaryColor,
              ),
              title: const Text(
                "Reservations",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Setting();
                    },
                  ),
                );
              },
              leading: const Icon(
                (Icons.account_circle_sharp),
                color: kPrimaryColor,
              ),
              title: const Text(
                "Setting",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),

          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Logout();
                    },
                  ),
                );
              },
              leading: Icon(
                (Icons.logout),
                color: kPrimaryColor,
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      )),
      body: Column(
        children: [
          HaderProfil(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          SizedBox(height: 40),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconBouttonH(
                        assetImage: const Icon(
                          Icons.menu_book_outlined,
                          color: kPrimaryColor,
                          size: 80,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Master_Page_Screen();
                              },
                            ),
                          );
                        },
                        textBoutton: "Book",
                      ),
                      IconBouttonH(
                        assetImage: const Icon(
                          Icons.calendar_month,
                          color: kPrimaryColor,
                          size: 80,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const CalenderPage();
                              },
                            ),
                          );
                        },
                        textBoutton: "Calendar",
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
