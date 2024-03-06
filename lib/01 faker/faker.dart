import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyFaker extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    print(faker.person.name());
    return Scaffold(
        appBar: AppBar(
          title: Text("FAKERRR"),
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                  "https://picsum.photos/id/${870 + index}/200/300"),
            ),
            title: Text(faker.person.name()),
            subtitle: Text(faker.internet.email()),
            //subtitle: Text("${faker.internet.email()}"), //make string interpolation ==>> ${}
          ),
        ));
  }
}
