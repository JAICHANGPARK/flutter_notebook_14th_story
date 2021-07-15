import 'package:get/get.dart';

class ClothPageController extends GetxController {
  var pageIndex = 0.obs;

  setPage(idx) => pageIndex = idx.obs;
}
