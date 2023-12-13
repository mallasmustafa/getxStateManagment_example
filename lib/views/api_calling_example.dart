import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/api_controller.dart';

class ApiCallingExample extends StatelessWidget {
  const ApiCallingExample({super.key});

  @override
  Widget build(BuildContext context) {
    ApiController apiController = Get.put(ApiController());
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        title: Text("APi calling"),
      ),
      body: ListView(
        children: [
          Obx(
            () => apiController.isLoading.value
                ? LinearProgressIndicator()
                : Column(
                    children: apiController.userList
                        .map((element) => Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                leading: ClipRRect(
                                  child: Image.network(
                                    element.avatarUrl!,
                                    width: 50,
                                  ),
                                ),
                                title: Text(
                                  element.login.toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: Text(
                                  element.id.toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ))
                        .toList()),
          )
        ],
      ),
    );
  }
}
