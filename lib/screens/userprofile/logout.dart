// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:pal_app/components/background.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _logoutState();
}

class _logoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Background(y: false, x: true, child: Container());
  }
}
