import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:getx_example/controller/example_controller.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    ExampleController controller = Get.put(ExampleController());
    return Column(
      children: [
        const Text(
          "Example 4",
          style: TextStyle(fontSize: 24),
        ),
        Obx(
          () => DropdownButton(
            value: controller.selectedValue.value,
            items: [
              DropdownMenuItem(value: "mallas", child: Text("mallas")),
              DropdownMenuItem(value: "mustafa", child: Text("mustafa")),
              DropdownMenuItem(value: "mallas22", child: Text("mallas22")),
              DropdownMenuItem(value: "mallas90", child: Text("mallas90")),
            ],
            onChanged: (value) {
              controller.selectedValue.value = value!;
            },
          ),
        ),
        Obx(() => Text("Your selected value is ${controller.selectedValue}",
            style: TextStyle(fontSize: 24)))
      ],
    );
  }
}
