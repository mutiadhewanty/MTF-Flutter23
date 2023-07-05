import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_first_project/pertemuan2/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Text(
              "Welcome back! Glad to see you, Again!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 32,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter Your Email"),
            ),
            Container(
              height: 12,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Password",
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            Container(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password',
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.black)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text("Login"),
              ),
            ),
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.grey,
                  width: 120,
                  height: 2,
                ),
                Text("Or Login With"),
                Container(
                  color: Colors.grey,
                  width: 120,
                  height: 2,
                )
              ],
            ),
            Container(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 36,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png"),
                ),
                Container(
                  height: 36,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png"),
                ),
                Container(
                  height: 36,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/625px-Apple_logo_black.svg.png"),
                )
              ],
            ),
            Container(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?"),
                Container(width: 12),
                Text(
                  "Register Now",
                  style: TextStyle(color: Colors.cyan),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
