import 'package:get/get.dart';

class RestaurantController extends GetxController {
  String name = "Pizza Cabin";
  final followerCount = 0.obs;
  final isOpen = true.obs;
  final followerList = [].obs;
  final reviews = <String, String>{}.obs;

  static RestaurantController get to => Get.find<RestaurantController>();

  Worker everWorker;

  @override
  void onInit() {
    super.onInit();

    everWorker = ever(followerList, (List list) {
      followerCount((list.length));
      if (list.length >= 5) everWorker.dispose();
    });
    once(followerList,
        (value) => print("followerList updated first time $value"));

    interval(
      followerCount,
      (value) => print("Count: $value"),
      time: Duration(seconds: 5),
    );
  }

  setName(String restoName) {
    // call api

    //set name from api data
    name = restoName;
    update();
  }

  incrementCount() {
    followerCount(followerCount.value + 1);
  }

  decrement() {
    followerCount(followerCount.value - 1);
  }

  setIsOpen(bool open) {
    isOpen(open);
  }

  setFollowerList(List<String> list) {
    followerList.assignAll(list);
  }

  addFollower(String name) {
    followerList.add(name);
  }

  removeFollower(int index) {
    followerList.removeAt(index);
  }

  addReview(String name, String review) {
    // reviews.add(name, review);
    reviews.addIf(true, name, review);
    print("review was added");
  }

  removeReview(String name) {
    reviews.remove(name);
  }
}
