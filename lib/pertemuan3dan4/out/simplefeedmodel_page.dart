import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan3dan4/post.dart';
import 'package:my_first_project/pertemuan3dan4/out/story.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SimpleFeedPage extends StatelessWidget {
  const SimpleFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Story> stories = [
      Story(
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          "Jazmin"),
      Story(
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          "Sylvester"),
      Story(
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          "Lavina"),
      Story(
          "https://images.pexels.com/photos/1124724/pexels-photo-1124724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          "Mckenzie"),
      Story(
          "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          "Buster"),
    ];

    List<Post> posts = [
      Post(
          username: "Mariano",
          userImage: "https://i.pravatar.cc/150?img=4",
          postImage:
              "https://images.pexels.com/photos/291762/pexels-photo-291762.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          caption: "Consequatur nihil aliquid omnis consequatur."),
      Post(
          username: "Johan",
          userImage: "https://i.pravatar.cc/150?img=5",
          postImage:
              "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          caption: "Consequatur nihil aliquid omnis consequatur."),
      Post(
          username: "London",
          userImage: "https://i.pravatar.cc/150?img=6",
          postImage:
              "https://images.pexels.com/photos/247298/pexels-photo-247298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          caption: "Consequatur nihil aliquid omnis consequatur."),
      Post(
          username: "Jada",
          userImage: "https://i.pravatar.cc/150?img=7",
          postImage:
              "https://images.pexels.com/photos/169191/pexels-photo-169191.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          caption: "Consequatur nihil aliquid omnis consequatur."),
      Post(
          username: "Crawford",
          userImage: "https://i.pravatar.cc/150?img=8",
          postImage:
              "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          caption: "Consequatur nihil aliquid omnis consequatur."),
    ];

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
            // posts
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: posts.length,
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
                                  CircleAvatar(
                                    radius: 18, // Image radius
                                    backgroundImage:
                                        NetworkImage(posts[i].userImage),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(posts[i].username),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          posts[i].postImage,
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
