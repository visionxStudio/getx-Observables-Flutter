import 'package:get/get.dart';

class ResturantController extends GetxController {
  final name =
      "John Carter".obs; // this is how we define an observable with getx
  final followerCount = 0.obs;
  final isOpen = true.obs;
  final followerList = [].obs;
  final reviews = <String, String>{}.obs;

  @override
  void onInit() {
    super.onInit();
  }
}
