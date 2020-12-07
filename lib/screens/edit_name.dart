import '../controllers/restaurant_controller.dart';
import '../widget/cheetah_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditName extends StatelessWidget {
  final restoController = RestaurantController.to;

  @override
  Widget build(BuildContext context) {
    print("EditName screen building...");
    return Scaffold(
      appBar: AppBar(title: Text("Test Name Edit")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            GetBuilder<RestaurantController>(
              builder: (controller) => Text(
                controller.name,
                style: TextStyle(fontSize: 48),
              ),
            ),
            SizedBox(height: 16),
            CheetahInput(
              hintText: "Restauarant Name",
              onSubmit: (value) => restoController.setName(value),
            )
          ],
        ),
      ),
    );
  }
}
