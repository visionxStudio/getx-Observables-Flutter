import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stateManagement/controllers/resturant_controller.dart';

class ToggleStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restroController = ResturantController.to;
    print("ToggleStatus screen building...");

    return Scaffold(
      appBar: AppBar(title: Text("Test Status Toggle")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Is the restuarant open?",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Obx(
                () => Switch(
                  onChanged: (value) => {restroController.setIsOpen(value)},
                  activeColor: Colors.purple,
                  value: restroController.isOpen.value,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
