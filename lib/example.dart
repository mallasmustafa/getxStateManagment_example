import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/example2.dart';
import 'package:getx_example/example3.dart';
import 'package:getx_example/example4.dart';
import 'package:getx_example/example5.dart';
import 'package:getx_example/example_controller.dart';
import 'package:getx_example/image_picker_example.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    ExampleController controller = Get.put(ExampleController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx examples"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Obx(
              () => Text(
                controller.number.value.toString(),
                style: const TextStyle(fontSize: 25),
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      controller.number.value++;
                    },
                    icon: const Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      controller.number.value--;
                    },
                    icon: const Icon(Icons.remove)),
              ],
            ),
            const Example2(),
            const SizedBox(height: 15),
            const Example3(),
            const SizedBox(height: 15),
            const Example4(),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Get.to(Example5());
                },
                child: const Text("Example 5 click")),
                const SizedBox(height: 15),
                ElevatedButton(
                onPressed: () {
                  Get.to(const ImagePickerExample());
                },
                child: const Text("Image picker example"))
          ],
        ),
      ),
    );
  }
}
