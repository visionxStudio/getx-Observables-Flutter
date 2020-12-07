import '../controllers/restaurant_controller.dart';
import '../widget/cheetah_button.dart';
import '../widget/cheetah_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddReviews extends StatelessWidget {
  final nameInputController = TextEditingController();
  final reviewInputController = TextEditingController();
  final restoController = RestaurantController.to;

  @override
  Widget build(BuildContext context) {
    print("AddReviews screen building...");

    return Scaffold(
      appBar: AppBar(title: Text("Test Reviews")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CheetahInput(
              hintText: "Name",
              onSubmit: (value) => print(value),
              editingController: nameInputController,
            ),
            SizedBox(height: 16),
            CheetahInput(
              hintText: "Review",
              onSubmit: (value) => print(value),
              editingController: reviewInputController,
            ),
            SizedBox(height: 16),
            CheetahButton(
              "Submit",
              () => restoController.addReview(
                nameInputController.text,
                reviewInputController.text,
              ),
            ),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: restoController.reviews.length,
                itemBuilder: (context, index) {
                  MapEntry reviewEntry =
                      restoController.reviews.entries.elementAt(index);

                  return ListTile(
                    title: Column(
                      children: [
                        Text(reviewEntry.key),
                        Text(reviewEntry.value),
                      ],
                    ),
                    leading: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () =>
                          restoController.removeReview(reviewEntry.key),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
