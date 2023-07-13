import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan3dan4/post.dart';

class SimpleFeedPage extends StatelessWidget {
  const SimpleFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<Post>> getData() async {
      var dio = Dio();
      var response = await dio.get(
          "https://instameter-7ffcb-default-rtdb.firebaseio.com/post.json");
      List<Post> listPosts =
          (response.data as List).map((e) => Post.fromJson(e)).toList();
      return listPosts;
    }

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
            FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return const Text("ini tampilan ketika error");
                  } else {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data?.length,
                        itemBuilder: (ctx, index) {
                          return Container(
                              color: Colors.white,
                              child: Column(children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 18, // Image radius
                                            backgroundImage: NetworkImage(
                                                "${snapshot.data?[index].userImage}"),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                              "${snapshot.data?[index].username}"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Image.network(
                                  "${snapshot.data?[index].postImage}",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ]));
                        },
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
