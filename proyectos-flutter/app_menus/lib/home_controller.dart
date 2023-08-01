import 'package:get/get.dart';

class HomeController extends GetxController {
  final _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;
  set currentIndex(value) => _currentIndex.value = value;
}
