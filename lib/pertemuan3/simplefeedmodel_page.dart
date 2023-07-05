import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan3/post.dart';
import 'package:my_first_project/pertemuan3/story.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SimpleFeedPage extends StatelessWidget {
  const SimpleFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instameter",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
              child: Text("Tempat Story"),
            ),
            // posts
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (ctx, i) {
                  return Container(
                      color: Colors.white,
                      child: Column(children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 18, // Image radius
                                    backgroundImage: NetworkImage(
                                        "https://i.pravatar.cc/150?img=8"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text("Jada"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                          width: MediaQuery.of(context).size.width,
                        )
                      ]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
