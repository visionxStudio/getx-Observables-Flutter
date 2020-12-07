import '../../screens/navigation/navigation_test.dart';
import '../../widget/cheetah_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class NavigationHub extends StatelessWidget {
  handleReturnData() async {
    var data = await Get.to(NavigationTest());
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CheetahButton(
              'Normal navigation',
              () => Get.to(NavigationTest()),
            ),
            CheetahButton(
              'Named navigation',
              () => Get.toNamed('navigation_test'),
            ),
            CheetahButton(
              'Navigation with params',
              () => Get.toNamed('navigation_test?first=Julian&second=Currie'),
            ),
            CheetahButton(
              'Navigation with named params',
              () => Get.toNamed('navigation_test/CheetahCoding'),
            ),
            CheetahButton(
              'Navigate, pop current stack',
              () => Get.offNamed('navigation_test'),
            ),
            CheetahButton(
              'Navigate and pop until...',
              () => Get.offNamedUntil(
                'navigation_test',
                (route) => route.isFirst,
              ),
            ),
            CheetahButton(
              'Remove current route',
              () => Get.removeRoute(Get.routing.route),
            ),
            CheetahButton('Handle returned data', handleReturnData),
            CheetahButton(
              'Open Snackbar',
              () => Get.snackbar(
                'Cheetah Coding',
                'Snackbars are easy in GetX',
                backgroundColor: Colors.white,
                snackPosition: SnackPosition.BOTTOM,
              ),
            ),
            CheetahButton(
              'Open Dialog',
              () => Get.defaultDialog(
                  title: 'Cheetah Coding',
                  middleText: 'A highly customizable dialog',
                  radius: 0.0,
                  confirm: FlatButton(
                    child: Text('OK'),
                    onPressed: () => print(
                      'confirmed',
                    ),
                  ),
                  cancel: FlatButton(
                    child: Text('CANCEL'),
                    onPressed: () => Get.back(),
                  )),
            ),
            CheetahButton(
              'Open Bottom Sheet',
              () => Get.bottomSheet(
                Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        title: Text('Recipes'),
                        onTap: () => {},
                      ),
                      ListTile(
                        title: Text('People'),
                        onTap: () => {},
                      ),
                      ListTile(
                        title: Text('Places'),
                        onTap: () => {},
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
