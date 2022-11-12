import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: gridview(),
    );
  }
}

// ignore: camel_case_types
class gridview extends StatefulWidget {
  const gridview({super.key});
  @override
  State<gridview> createState() => gridviewstate();
}

// ignore: camel_case_types
class gridviewstate extends State<gridview> {
  var button = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GridView",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.deepPurple,
            margin: const EdgeInsets.symmetric(vertical: 30),
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: (() {
                    setState(() {});
                    button = "internet";
                  }),
                  color: Colors.lightBlue,
                  child: const Center(
                    child: Text(
                      "internet image",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: (() {
                    setState(() {});
                    button = "assets";
                  }),
                  color: Colors.lightBlue,
                  child: const Center(
                    child: Text(
                      "assets image",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: List.generate(
                10,
                (index) {
                  if (button == 'internet') {
                    return Center(
                      child: Image.network(
                        'https://media.istockphoto.com/id/682710378/photo/flag-of-pakistan.jpg?s=612x612&w=0&k=20&c=e40eMm-D88eXxJVdT0ylpt4yX0caH7-YiX4aoCP8Yq8=',
                        width: 225,
                        height: 300,
                      ),
                    );
                  } else {
                    return Center(
                      child: Image.asset(
                        'image/quiz.png',
                        width: 225,
                        height: 70,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
