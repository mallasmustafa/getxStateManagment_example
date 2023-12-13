import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/example_controller.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    ExampleController controller = Get.put(ExampleController());
    return Column(
      children: [
        Text("Example 3", style: TextStyle(fontSize: 24)),
        Obx(
          () => Slider(
            value: controller.sliderValue.value,
            onChanged: (value) {
              controller.sliderValue.value = value;
            },
            max: 100,
            min: 0,
          ),
        ),
        Obx(() => Text(
            "Your slider value is ${controller.sliderValue.toStringAsFixed(0)}",
            style: TextStyle(fontSize: 24)))
      ],
    );
  }
}
