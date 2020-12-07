import '../../widget/drawer/state_options.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text(
                'Test GetX',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ExpansionTile(
              title: Text("State Management"),
              children: stateDrawerOptions(context),
            ),
            ListTile(
              title: Text('Navigation'),
              onTap: () => Get.toNamed('navigation_hub'),
            )
          ],
        ),
      ),
    );
  }
}
