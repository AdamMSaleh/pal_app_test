// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign Up".toUpperCase(),
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 20),
        ),
        SizedBox(height: defaultPadding),
        Row(
          children: [
            //   const Spacer(),
            //   Expanded(
            //   flex: 8,
            // child: SvgPicture.asset("assets/icons/signup.svg"),
            //),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
