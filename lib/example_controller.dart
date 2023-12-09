import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleController extends GetxController {
  RxInt number = 0.obs;
  RxString name = "Mallas".obs;
  RxDouble sliderValue = 0.0.obs;
  TextEditingController textController = TextEditingController();
  RxString selectedValue = "mallas".obs;
  List<String> fruitList = ["orange", "apple", "banana", "mango"].obs;
  List<dynamic> emptyList = [].obs;

  void nameFunction() {
    name.value = textController.text;
    textController.clear();
  }

  addFavourite(String value) {
    emptyList.add(value);
  }

  removeFavourite(String value) {
    emptyList.remove(value);
  }
}
