// ignore_for_file: camel_case_types, duplicate_ignore, file_names

import 'package:flutter/cupertino.dart';
import 'package:pal_app/components/background.dart';
// ignore: camel_case_types
// ignore: camel_case_types
import 'package:pal_app/screens/MasterPage/components/Search.dart';

class Master_Page_Screen extends StatefulWidget {
  const Master_Page_Screen({Key? key}) : super(key: key);

  @override
  State<Master_Page_Screen> createState() => _Master_Page_ScreenState();
}

class _Master_Page_ScreenState extends State<Master_Page_Screen> {
  @override
  Widget build(BuildContext context) {
    return Background(x: true, y: true, child: const SearchPage());
  }
}
