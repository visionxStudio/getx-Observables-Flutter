import '../../controllers/restaurant_controller.dart';
import '../../widget/card_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralCard extends StatelessWidget {
  final RestaurantController controller;

  GeneralCard(this.controller);

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      title: "General",
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GetBuilder<RestaurantController>(
            builder: (controller) => Text(
              controller.name,
              style: TextStyle(fontSize: 22),
            ),
          ),
          SizedBox(height: 4),
          Obx(
            () => Text(
              "Followers: ${controller.followerCount.value.toString()}",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 4),
          Obx(
            () => Text(
              controller.isOpen.value ? "Open" : "Closed",
              style: TextStyle(
                color: controller.isOpen.value ? Colors.green : Colors.red,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
