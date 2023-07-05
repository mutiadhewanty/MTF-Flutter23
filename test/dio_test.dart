import 'package:dio/dio.dart';

Future<void> main() async {
  var dio = Dio();
  var postData = await dio
      .get("https://instameter-7ffcb-default-rtdb.firebaseio.com/post.json");
  print(postData.data);
}
