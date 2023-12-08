import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/example2.dart';
import 'package:getx_example/example3.dart';
import 'package:getx_example/example4.dart';
import 'package:getx_example/example_controller.dart';

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
            SizedBox(height: 15),
            Example3(),
            SizedBox(height: 15),
            Example4()
          ],
        ),
      ),
    );
  }
}
