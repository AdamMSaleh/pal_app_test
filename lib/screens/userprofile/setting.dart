import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pal_app/components/background.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Background(x: true, y: false, child: Container());
  }
}
