// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  Widget drawer = Drawer(
      child: Column(
    children: [
      const CircleAvatar(
          radius: 80, backgroundImage: AssetImage("assets/images/profile.png")),
      const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Heba Taher Wezwazi",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      Divider(),
      Card(
        child: ListTile(
          onTap: () {
            // Navigator.pop(context);
          },
          leading: Icon(
            (Icons.account_balance),
          ),
          title: Text(
            "Instagram Page",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      Card(
        child: ListTile(
          onTap: () {
            //  Navigator.pop(context);
          },
          leading: Icon(
            (Icons.account_circle_sharp),
          ),
          title: Text(
            "Login Page",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    ],
  ));
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}
