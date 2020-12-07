import '../../controllers/menu_controller.dart';
import '../../controllers/restaurant_controller.dart';
import '../../screens/home/followers_card.dart';
import '../../screens/home/general_card.dart';
import '../../screens/home/menu_card.dart';
import '../../screens/home/reviews_card.dart';
import '../../widget/drawer/side_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final restoController = RestaurantController.to;
  final menuController = MenuController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("State Management")),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GeneralCard(restoController),
            FollowersCard(restoController),
            ReviewsCard(restoController),
            MenuCard(menuController),
          ],
        ),
      ),
    );
  }
}
