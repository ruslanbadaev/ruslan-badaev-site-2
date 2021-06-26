import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruslan_badaev_site/controllers/test_controller.dart';
import "package:hovering/hovering.dart";

class Home extends StatelessWidget {
  final testController = Get.put(TestController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(24),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
