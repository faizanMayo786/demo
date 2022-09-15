import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  String? cgpa;
  String? name;
SharedPrefrences.getInstance

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Add a Student",
                  style: TextStyle(fontSize: 40),
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                    print(name);
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Enter Name of Student",
                    counterText: "0 Characters",
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      cgpa = value;
                    });
                    print(cgpa);
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Enter CGPA of student",
                    counterText: "0 Characters",
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text("Add Student")),
                Text("CGPA : $cgpa"),
                Text("NAME : $name")
              ],
            ),
          ),
        )),
      ),
    );
  }
}
// https://github.com/faizanMayo786
