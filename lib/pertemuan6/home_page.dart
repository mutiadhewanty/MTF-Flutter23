import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan6/login_page.dart';
import 'package:my_first_project/pertemuan6/shared_pref.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    print(SharedPref.pref?.getString("token"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(SharedPref.pref?.getString("token"));
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${SharedPref.pref?.getString("token")}"),
          ElevatedButton(
              onPressed: () {
                SharedPref.pref?.remove("token");
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text("logout"))
        ],
      )),
    );
  }
}
