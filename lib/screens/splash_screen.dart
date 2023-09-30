import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/screens/screens.dart';
import 'package:sample_project/components/dynamic_width_container.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () => Get.off(LoginPage()));
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/logo.png'),
              height: 90,
            ),
            SizedBox(height: 6),
            DynamicWidthContainer(
              text: 'For Rider',
              textColor: Colors.white,
              bgColor: Colors.orangeAccent,
              isItalic: true,
            ),
          ],
        ),
      ),
    );
  }
}
