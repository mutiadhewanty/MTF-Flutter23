import 'package:dio/dio.dart';

class Post {
  final int id;
  final String userImage;
  final String username;
  final String postImage;
  final String caption;

  Post(
      {required this.id,
      required this.userImage,
      required this.username,
      required this.postImage,
      required this.caption});
}

void main() {
  Post a = Post(
      id: 1,
      userImage: "htttpssss/aaa",
      username: "paidjo",
      postImage: "http:///assaa.png",
      caption: "aduh galau");
  Post b = Post(
      id: 2,
      userImage: "userImage",
      username: "username",
      postImage: "postImage",
      caption: "caption");

  print(a.caption);

  List<Post> postsList = [a, b];
  print(postsList[0].caption);
}


// void main() {
//   List<String> mahasiswaList = ["bedjo", "laki-laki", "Madura"];
//   Map<String, String> mahasiswaMap = {
//     "nama": "bedjo",
//     "jk": "laki-laki",
//     "kota": "Madura"
//   };

//   print(mahasiswaList[2]);
//   print("");
//   print(mahasiswaMap["kota"]);
// }
