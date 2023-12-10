import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/example_controller.dart';

class Example5 extends StatelessWidget {
  Example5({super.key});

  ExampleController exampleController = Get.put(ExampleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example 5"),
      ),
      body: ListView.builder(
        itemCount: exampleController.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                onTap: () {
                  if (exampleController.emptyList
                      .contains(exampleController.fruitList[index])) {
                    exampleController
                        .removeFavourite(exampleController.fruitList[index]);
                  } else {
                    exampleController
                        .addFavourite(exampleController.fruitList[index]);
                  }
                },
                title: Text(exampleController.fruitList[index]),
                trailing: Obx(
                  () => Icon(
                    Icons.favorite,
                    color: exampleController.emptyList
                            .contains(exampleController.fruitList[index])
                        ? Colors.red
                        : Colors.white,
                  ),
                )),
          );
        },
      ),
    );
  }
}
