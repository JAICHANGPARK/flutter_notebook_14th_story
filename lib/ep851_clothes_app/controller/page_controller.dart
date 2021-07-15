import 'package:get/get.dart';

class PageController extends GetxController {
  var pageIndex = 0.obs;

  setPage(idx) => pageIndex = idx;
}
