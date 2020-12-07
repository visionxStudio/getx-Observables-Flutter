import 'package:get/get.dart';
import 'package:stateManagement/controllers/resturant_controller.dart';

import '../widget/rounded_input.dart';
import 'package:flutter/material.dart';

class EditName extends StatelessWidget {
  final restroController = ResturantController.to;
  @override
  Widget build(BuildContext context) {
    print("EditName screen building...");
    return Scaffold(
      appBar: AppBar(title: Text("Test Name Edit")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Obx(
              () => Text(
                restroController.name.value,
                style: TextStyle(fontSize: 48),
              ),
            ),
            SizedBox(height: 16),
            RoundedInput(
              hintText: "Restauarant Name",
              onSubmit: (value) {
                restroController.setName(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
