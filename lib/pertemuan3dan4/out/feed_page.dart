import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan3dan4/post.dart';
import 'package:my_first_project/pertemuan3dan4/out/story.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

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
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: stories.map((story) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                            width: 3,
                            color: const Color(0xFF8e44ad),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(
                            2,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image(
                              image: NetworkImage(story.image),
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(story.name),
                    ],
                  );
                }).toList(),
              ),
            ),

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
                    child: Column(
                      children: [
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

                        FadeInImage(
                          image: NetworkImage(posts[i].postImage),
                          placeholder:
                              const AssetImage("assets/placeholder.png"),
                          width: MediaQuery.of(context).size.width,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FontAwesomeIcons.heartCircleBolt),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FontAwesomeIcons.comment),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FontAwesomeIcons.seedling),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.bookmark),
                            ),
                          ],
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "Liked By ",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: "Sigmund,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " Yessenia,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " Dayana",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " and",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " 1263 others",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // caption
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 5,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: posts[i].username,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " ${posts[i].caption}",
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // post date
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Febuary 2020",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
