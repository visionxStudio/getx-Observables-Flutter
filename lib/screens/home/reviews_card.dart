import '../../controllers/restaurant_controller.dart';
import '../../widget/card_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewsCard extends StatelessWidget {
  final RestaurantController controller;

  ReviewsCard(this.controller);

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      title: "Reviews",
      body: Obx(
        () => controller.reviews.entries.length == 0
            ? Text(
                "No Reviews",
                style: TextStyle(fontStyle: FontStyle.italic),
              )
            : ListView.builder(
                shrinkWrap: true,
                itemCount: controller.reviews.length,
                itemBuilder: (context, index) {
                  MapEntry reviewEntry =
                      controller.reviews.entries.elementAt(index);

                  return ListTile(
                    title: Column(
                      children: [
                        Text(reviewEntry.key),
                        Text(reviewEntry.value),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
