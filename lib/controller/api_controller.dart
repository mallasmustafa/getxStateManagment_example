import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_example/models/user_model.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController {
  final String baseUrl = "https://api.github.com/users";
  RxList<UserModel> userList = RxList<UserModel>();
  @override
  void onInit() {
    super.onInit();
    getApi();
  }

  RxBool isLoading = false.obs;

  getApi() async {
    isLoading.value = true;
    var response = await http.get(Uri.parse(baseUrl));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (var user in data) {
        userList.add(UserModel.fromJson(user));
      }
      isLoading.value = false;
    } else {
      isLoading.value = false;
      print("something went wrong");
    }
  }
}
