import 'package:get/get.dart';

class ResturantController extends GetxController {
  final name = "Pizza Hut".obs; // this is how we define an observable with getx
  final followerCount = 0.obs;
  final isOpen = false.obs;
  final followerList = [].obs;
  final reviews = <String, String>{}.obs;

  static ResturantController get to => Get.find<ResturantController>();

  @override
  void onInit() {
    super.onInit();
  }

  setName(String restroName) {
    name(restroName);
  }

  incrementCount() {
    followerCount(followerCount.value + 1);
  }

  decrementCount() {
    followerCount(followerCount.value - 1);
  }

  setIsOpen(bool open) {
    isOpen(open);
  }

  // How to update the list
  setFollowerList(List<String> list) {
    followerList.assignAll(list);
  }

  // Adding a single data to the list

  addFollower(String name) {
    followerList.add(name);
  }

  // removing a data from the list in the getx

  removeFollower(int index) {
    followerList.removeAt(index);
  }

  // Working with the map in the getx
  addReview(String name, String review) {
    // reviews.add(name, review);
  }

  removeReview(String name) {
    reviews.remove(name);
  }
}
