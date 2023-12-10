import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/image_picker_controller.dart';

class ImagePickerExample extends StatelessWidget {
  const ImagePickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    ImagePickerController controller = Get.put(ImagePickerController());
    return Scaffold(
        appBar: AppBar(
          title: Text("getx imagePicker"),
        ),
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: controller.imagePath.value.isNotEmpty
                      ? FileImage(File(controller.imagePath.toString()))
                      : null,
                  radius: 40,
                ),
              ),
              TextButton(
                  onPressed: () {
                    controller.getImage();
                  },
                  child: Text(
                    "Pick image",
                  ))
            ],
          ),
        ));
  }
}
