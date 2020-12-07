import '../../controllers/menu_controller.dart';
import '../../widget/card_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuCard extends StatelessWidget {
  final MenuController controller;

  MenuCard(this.controller);

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      title: "Menu Info",
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              controller.menu.value.name,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              controller.menu.value.color,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              controller.menu.value.location,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
