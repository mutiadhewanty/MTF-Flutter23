import 'package:dio/dio.dart';
import 'package:my_first_project/pertemuan3dan4/post.dart';

Future<void> main() async {
  var dio = Dio();
  var response = await dio
      .get("https://instameter-7ffcb-default-rtdb.firebaseio.com/post.json");
  List<dynamic> listDinamis = response.data as List;
  List<Post> listPosts = listDinamis.map((e) => Post.fromJson(e)).toList();

  print(listDinamis[0]["username"]);
  print(listPosts[0].username);
  // (response.data as List)
}

// Future<void> main() async {
//   var dio = Dio();
//   var postData = await dio
//       .get("https://instameter-7ffcb-default-rtdb.firebaseio.com/post.json");
//   List<Post> postList =
//       (postData.data as List).map((e) => Post.fromJson(e)).toList();

//   print(postList[0].caption);
// }
