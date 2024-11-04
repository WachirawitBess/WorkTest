import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const descTextStyle = TextStyle(
      fontSize: 18,
      color: Colors.black,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    const titleText = Text(
      'Strawberry Pavlova',
      style: TextStyle(fontSize: 20),
    );

    const subTitle = Text(
      'Delicious and creamy dessert with fresh strawberries',
      style: TextStyle(fontSize: 16, color: Colors.grey),
    );

    final rating = Row(
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Container(
          margin: const EdgeInsets.all(15.0),
          child: const Text('170 Reviews'),
        ),
      ],
    );

    const String appTitle = 'Flutter layout demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      titleText,
                      subTitle,
                      rating,
                      iconList,
                    ],
                  ),
                ),
                Expanded(
                  child: Image.asset('images/image.jpg'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    'images/student.png', 
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'ชื่อนักศึกษา: Wachirawit Chanfoei รหัสนักศึกษา: 651998026',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
