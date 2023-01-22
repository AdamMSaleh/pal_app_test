// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class HaderProfil extends StatelessWidget {
  const HaderProfil({
    Key? key,
    required Function()? onPressed,
  })  : _onPressed = onPressed,
        super(key: key);
  final Function()? _onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
        //*radius it down hader
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
          bottomRight: Radius.circular(80),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(
            children: [
              IconButton(
                  onPressed: _onPressed,
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 35,
                  ))
            ],
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  //* imeg in Hader

                  child: //* person imag
                      Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                      ),
                    ),
                    child: Image.asset("assets/images/icons8.png"),
                  ),
                  //* end Imag Hader
                ),
                SizedBox(height: 25),
                //*  name
                const Text(
                  "Ahmad",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                //* end  name
                SizedBox(height: 20),
                //* name the user
              ],
            ),
          ),
        ],
      ),
    );
  }
}
