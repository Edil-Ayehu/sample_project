import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/components/components.dart';

import '../email_validation_controller.dart';

class LoginPage extends StatelessWidget {
  final EmailValidationController controller =
      Get.put(EmailValidationController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 100),
                SizedBox(
                  height: 120,
                  child: ListView(
                    children: [
                      Text(
                        "Log in",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        hintText: 'E-mail',
                        onChanged: (value) => controller.setEmail(value),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 130),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Find e-mail',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.grey.shade400,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Find password',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.grey.shade400,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Obx(() {
                      return ReusableButton(
                        buttonColor: controller.isEmailValid
                            ? Colors.black
                            : Colors.grey.shade400,
                        onPressed: controller.isEmailValid
                            ? () {
                                // Handle the 'Next' button click here
                              }
                            : null,
                        buttonText: controller.isEmailValid
                            ? 'Next'
                            : 'Enter your email address',
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
