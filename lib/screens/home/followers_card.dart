import '../../controllers/restaurant_controller.dart';
import '../../widget/card_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowersCard extends StatelessWidget {
  final RestaurantController controller;

  FollowersCard(this.controller);

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      title: "Followers",
      body: Obx(
        () => controller.followerList.length == 0
            ? Text(
                "No followers",
                style: TextStyle(fontStyle: FontStyle.italic),
              )
            : ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.followerList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    child: Text(
                      "${controller.followerList[index]}",
                      style: TextStyle(fontSize: 16),
                    ),
                    padding: EdgeInsets.all(8),
                  );
                },
              ),
      ),
    );
  }
}
