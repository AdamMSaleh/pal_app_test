// ignore_for_file: file_names, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:pal_app/screens/MaterialRegistration/register-screen.dart';
import '../../constants.dart';
import 'subject_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void updateList(String value) {}

  static List<subjectModel> main_subject_model = [
    subjectModel("Java"),
    subjectModel("C#"),
    subjectModel("Database"),
    subjectModel("Data Mining"),
    subjectModel("web"),
    subjectModel("Python"),
    subjectModel("Systems analysis"),
    subjectModel("Php"),
    subjectModel("Data Structure"),
    subjectModel("Calculus1"),
  ];
  List<subjectModel> display_list = List.from(main_subject_model);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            "Search for a subject :",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: kPrimaryLightColor,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              hintText: "eg : Introduction of software",
              prefixIcon: const Icon(Icons.search)),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const register();
                            },
                          ),
                        );
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(
                            display_list[index].SubjectName!,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: kPrimaryColor),
                          ),
                          trailing: const Icon(
                            Icons.read_more,
                            color: kPrimaryColor,
                          ),
                          subtitle: Text(display_list[index].SubjectName!),
                        ),
                      ),
                    )))
      ],
    );
  }
}
