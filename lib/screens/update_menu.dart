import '../controllers/menu_controller.dart';
import '../model/menu.dart';
import '../widget/cheetah_button.dart';
import '../widget/cheetah_input.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class UpdateMenu extends StatelessWidget {
  final MenuController controller = MenuController.to;

  final nameInputController = TextEditingController();
  final colorInputController = TextEditingController();
  final locationInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("UpdateMenu screen building...");

    return Scaffold(
      appBar: AppBar(title: Text("Update Menu")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CheetahInput(
              hintText: "Name",
              onSubmit: (value) => controller.setMenuName(value),
              editingController: nameInputController,
            ),
            SizedBox(height: 16),
            CheetahInput(
              hintText: "Color",
              onSubmit: (value) => controller.setMenuColor(value),
              editingController: colorInputController,
            ),
            SizedBox(height: 16),
            CheetahInput(
              hintText: "Location",
              onSubmit: (value) => controller.setMenuLocation(value),
              editingController: locationInputController,
            ),
            SizedBox(height: 16),
            CheetahButton(
              "Submit",
              () => controller.setMenu(
                Menu(
                  name: nameInputController.text,
                  color: colorInputController.text,
                  location: locationInputController.text,
                ),
              ),
            ),
            SizedBox(height: 16),
            Obx(
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
          ],
        ),
      ),
    );
  }
}
