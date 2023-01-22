// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../constants.dart';

class BoxDialog extends StatefulWidget {
  const BoxDialog({super.key, required String text, required String name})
      : _name = name,
        _text = text;
  final String _text;
  final String _name;
  @override
  State<BoxDialog> createState() => _BoxDialogState();
}

class _BoxDialogState extends State<BoxDialog> {
  TextEditingController? controller = TextEditingController();
  @override
  void initState() {
    controller!.text = widget._text;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Text(
            "PAL Leaders",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text(
            widget._name,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Course topics",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 10),
          //* text field
          Container(
            child: TextFormField(
              //  onSaved: _onSaved,
              maxLines: 5,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.text,
              controller: controller,

              decoration: InputDecoration(
                // icon: _icon,

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 1),
                ),
                //* focuse border normal
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                color: kPrimaryColor,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                "back",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                color: kPrimaryColor,
                width: 1,
              ),
            ),
            child: Center(
              // ignore: prefer_const_constructors
              child: Text(
                "reservation",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
