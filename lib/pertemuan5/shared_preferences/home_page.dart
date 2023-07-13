import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan5/shared_preferences/shared_pref.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var baseUrl = "http://10.0.2.2:8000/api";
  String tokenTanpaSharedpref = "";

  @override
  Widget build(BuildContext context) {
    Future<void> login() async {
      var dio = Dio();
      var response = await dio.post(
        "$baseUrl/login",
        data: {"email": "marlin09@example.com", "password": "password"},
      );
      SharedPref.pref?.setString("token", response.data["data"]["token"]);
      tokenTanpaSharedpref = response.data["data"]["token"].toString();
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tokenTanpaSharedpref),
            Text("${SharedPref.pref!.getString("token")}"),
            ElevatedButton(
                onPressed: () {
                  login();
                  setState(() {});
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
