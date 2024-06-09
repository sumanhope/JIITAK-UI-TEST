import 'package:get/get.dart';

class FavoriteController extends GetxController {
  static FavoriteController get instance => Get.find();
  final favoriteStatus = <int, bool>{}.obs;
  void toggleFavorite(int index) {
    if (favoriteStatus.containsKey(index)) {
      favoriteStatus[index] = !favoriteStatus[index]!;
    } else {
      favoriteStatus[index] = true;
    }
  }

  bool isFavorite(int index) {
    return favoriteStatus[index] ?? false;
  }
}
