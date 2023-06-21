import 'package:get/get.dart';

import '../../data/local/preferences/preference_user_store.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserStore>(() => UserStore());
  }
}
