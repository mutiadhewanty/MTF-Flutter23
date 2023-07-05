import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/pertemuan3/post.dart';

class SimpleFeedPage extends StatelessWidget {
  SimpleFeedPage({super.key});

  List<Post> kumpulanPost = [
    Post(
        userImage:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=1000&q=60",
        username: "Paidjo1",
        postImage:
            "https://images.unsplash.com/photo-1682687221073-53ad74c2cad7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
        caption: "Qurban Nih"),
    Post(
        userImage:
            "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=1000&q=60",
        username: "Ahmad",
        postImage:
            "https://plus.unsplash.com/premium_photo-1684629276828-85cdb0429cd0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80",
        caption: "Liburan"),
    Post(
        userImage:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=1000&q=60",
        username: "Paidjo1",
        postImage:
            "https://images.unsplash.com/photo-1682687221073-53ad74c2cad7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
        caption: "Qurban Nih"),
  ];
  Future<List<Post>> getData() async {
    var dio = Dio();
    var postData = await dio
        .get("https://instameter-7ffcb-default-rtdb.firebaseio.com/post.json");
    print(postData.data);

    return kumpulanPost;
  }

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
            FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: const CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Text("ini tampilan ketika error");
                  } else {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (ctx, index) {
                          print(index);
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
