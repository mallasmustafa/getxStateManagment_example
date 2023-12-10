import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/login_controller.dart';

class LoginExample extends StatelessWidget {
  const LoginExample({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(title: const Text("Api Example")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
                controller: loginController.emailController.value,
                decoration: const InputDecoration(
                    hintText: "Email", border: OutlineInputBorder())),
            const SizedBox(height: 10),
            TextFormField(
                controller: loginController.passwordController.value,
                decoration: const InputDecoration(
                    hintText: "Password", border: OutlineInputBorder())),
            const SizedBox(height: 50),
            Obx(() => InkWell(
                  onTap: () {
                    loginController.LoginApi();
                  },
                  child: loginController.loading.value
                      ? const CircularProgressIndicator()
                      : Container(
                          height: 45,
                          decoration: const BoxDecoration(color: Colors.grey),
                          child: const Center(
                            child: Text("Login"),
                          ),
                        ),
                ))
          ],
        ),
      ),
    );
  }
}
