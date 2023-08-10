import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final _currentIndex = 0.obs;

  //ciclo de vida

//solo se ejecuta cuando se crea una instancia de HomeController
  @override
  void onInit() {
    //obener el valor del storage
    currentIndex = GetStorage().read('lastIndex') ?? 0;

    super.onInit();
  }

  int get currentIndex => _currentIndex.value;
  set currentIndex(value) => _currentIndex.value = value;
}
