import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              const Text(
                "Strawberry Pavlova",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Container(
                height: 12,
              ),
              const Text(
                  "Pavlova is a meringue-based dessert. Originating in either Australia or New Zealand in the early 20th century, it was named after the Russian ballerina Anna Pavlova."),
              Container(
                height: 12,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                    ],
                  ),
                  Text("170 Reviews")
                ],
              ),
              Container(
                height: 12,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.book, color: Colors.blue),
                      Text("PREP"),
                      Text("25 min")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.timer, color: Colors.blue),
                      Text("COOK"),
                      Text("1 hr")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.food_bank, color: Colors.blue),
                      Text("Feed"),
                      Text("4,6")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
