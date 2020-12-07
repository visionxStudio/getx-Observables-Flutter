import '../../widget/cheetah_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class NavigationTest extends StatelessWidget {
  final String firstName = Get.parameters['first'];
  final String title = Get.parameters['title'];

  @override
  Widget build(BuildContext context) {
    print(firstName);
    return Scaffold(
      appBar: AppBar(
        title: Text(firstName ?? 'Navigation Test'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Text(
                title ?? 'Navigation Test',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 16),
              CheetahButton(
                'Pass Data back',
                () => Get.back(result: 'Cheetah Coding'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
