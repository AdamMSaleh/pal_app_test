import 'package:flutter/material.dart';

import '../../../color/app_color.dart';

class Box extends StatelessWidget {
  const Box(
      {super.key, required Function()? onTap, required bool g, Widget? child})
      : _child = child,
        _onTap = onTap,
        _g = g;
  final bool _g;
  final Widget? _child;
  final Function()? _onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: _onTap,
        child: Container(
          width: 150,
          height: 70,
          color: _g ? AppColor.blue : null,
          child: Center(child: _child),
        ));
  }
}
