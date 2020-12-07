import 'package:get/get.dart';
import 'package:stateManagement/controllers/resturant_controller.dart';

import '../widget/rounded_input.dart';
import 'package:flutter/material.dart';

class AddFollowers extends StatelessWidget {
  const AddFollowers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("AddFollowers screen building...");

    final restroController = ResturantController.to;

    return Scaffold(
      appBar: AppBar(title: Text("Test Follower List")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            RoundedInput(
              hintText: "Follower Name",
              onSubmit: (value) => restroController.addFollower(value),
            ),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: restroController.followerList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(restroController.followerList[index]),
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
