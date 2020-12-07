import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stateManagement/controllers/resturant_controller.dart';

class EditFollowerCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restroController = ResturantController.to;
    return Scaffold(
      appBar: AppBar(title: Text("Test Follower Count")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                iconSize: 50,
                onPressed: () {
                  restroController.decrementCount();
                },
              ),
              Obx(
                () => Text(
                  restroController.followerCount.value.toString(),
                  style: TextStyle(fontSize: 48),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add),
                iconSize: 50,
                onPressed: () {
                  restroController.incrementCount();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
