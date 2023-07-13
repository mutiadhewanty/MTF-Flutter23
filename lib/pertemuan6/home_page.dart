import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan6/login_page.dart';
import 'package:my_first_project/pertemuan6/shared_pref.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var baseUrl = "https://62e4-103-17-77-3.ngrok-free.app/api";

  @override
  Widget build(BuildContext context) {
    Future<void> onLogout() async {
      var dio = Dio();
      var token = SharedPref.pref?.getString("token");
      try {
        var response = await dio.post("$baseUrl/logout",
            options: Options(headers: {"Authorization": "Bearer $token"}));
        SharedPref.pref?.remove("token");

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      } catch (e) {}
    }

    return Scaffold(
      appBar: AppBar(title: const Text("HomePage")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${SharedPref.pref?.getString("token")}"),
          ElevatedButton(
              onPressed: () {
                onLogout();
              },
              child: const Text("logout"))
        ],
      )),
    );
  }
}
