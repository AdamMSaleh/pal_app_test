// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class IconBouttonH extends StatelessWidget {
  const IconBouttonH({
    Key? key,
    required Function()? onTap,
    required Widget assetImage,
    required String textBoutton,
    /* required Color colorImag*/
  })  : _onTap = onTap,
        //  _colorImag = colorImag,
        _textBoutton = textBoutton,
        _assetImage = assetImage,
        super(key: key);

  final Function()? _onTap;
  final Widget _assetImage;
  final String _textBoutton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: _onTap,
          child: Container(
            width: 150,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: kPrimaryColor,
                width: 2,
              ),
            ),
            child: Center(
              child: _assetImage,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          _textBoutton,
          style: TextStyle(color: kPrimaryColor, fontSize: 30),
        )
      ],
    );
  }
}
