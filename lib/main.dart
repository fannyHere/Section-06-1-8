//import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:section_06/01%20faker/faker.dart';

void main() {
  // ignore: unused_local_variable
  //var faker = new Faker();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFaker(),
    );
  }
}
