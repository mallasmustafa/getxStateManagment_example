import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:getx_example/controller/example_controller.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    ExampleController controller = Get.put(ExampleController());
    return Column(
      children: [
        const Text("Example 2", style: TextStyle(fontSize: 24)),
        TextField(
          controller: controller.textController,
          decoration: const InputDecoration(
            hintText: "Enter name",
            filled: true,
            fillColor: Colors.grey,
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              controller.nameFunction();
            },
            child: const Text(
              "Submit ",
              style: TextStyle(fontSize: 20),
            )),
        SizedBox(height: 10),
        Obx(
          () => Text("your Name is ${controller.name.value}",
              style: const TextStyle(fontSize: 24)),
        )
      ],
    );
  }
}
