import 'package:get/get.dart';
import 'package:stateManagement/controllers/resturant_controller.dart';

import '../widget/card_info.dart';
import '../widget/side_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final restroController = ResturantController.to;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("GetX Observables")),
      drawer: SideDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InfoCard(
                title: "General",
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Obx(
                      () => Text(
                        restroController.name.value,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    SizedBox(height: 4),
                    Obx(
                      () => Text(
                        "Followers: ${restroController.followerCount.value}",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 4),
                    Obx(
                      () => Text(
                          restroController.isOpen.value ? "Open" : "Closed",
                          style: TextStyle(
                              color: restroController.isOpen.value
                                  ? Colors.green
                                  : Colors.red,
                              fontSize: 18)),
                    )
                  ],
                ),
              ),
              InfoCard(
                title: "Followers",
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      child: Text(
                        "John",
                        style: TextStyle(fontSize: 16),
                      ),
                      padding: EdgeInsets.all(8),
                    );
                  },
                ),
              ),
              InfoCard(
                title: "Reviews",
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      child: Text(
                        "Good",
                        style: TextStyle(fontSize: 16),
                      ),
                      padding: EdgeInsets.all(8),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
