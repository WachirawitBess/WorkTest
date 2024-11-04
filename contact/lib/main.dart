import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Person {
  Person(this.name, this.pic, this.telephone);

  final String pic;
  final String name;
  final String telephone;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Person List')),
        body: buildList(),
      ),
    );
  }
}

Widget buildList() {
  final people = <Person>[
    Person('Wachirawit', 'pic1.jpg', '0987654321'),
    Person('Chanfoei ', 'pic2.jpg', '0987654321'),
    Person('SayHi', 'pic3.jpg', '0987654321'),
  ];

  return ListView(
    children: [
      for (var person in people) _tile(person),
    ],
  );
}

Widget _tile(Person person) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('images/${person.pic}'),
    ),
    title: Text(
      person.name,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    ),
    subtitle: Text(person.telephone),
    trailing: IconButton(
      icon: Icon(Icons.edit), // Icon สำหรับปุ่มแก้ไข
      onPressed: () {
        // Action เมื่อกดปุ่มแก้ไข
        print('Edit ${person.name}');
      },
    ),
  );
}
