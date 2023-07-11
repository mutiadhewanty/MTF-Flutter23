import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan6/login_page.dart';
import 'package:my_first_project/pertemuan6/shared_pref.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
