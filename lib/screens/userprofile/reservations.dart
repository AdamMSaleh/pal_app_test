// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/background.dart';

class reservations extends StatefulWidget {
  const reservations({Key? key}) : super(key: key);

  @override
  State<reservations> createState() => _reservationsState();
}

class _reservationsState extends State<reservations> {
  @override
  Widget build(BuildContext context) {
    return Background(x: true, y: false, child: Container());
  }
}
