import 'dart:convert';

import 'package:get/get.dart';

import '../../../core/values/storage.dart';
import 'storage_service.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  final RxString _token = ''.obs;
  final RxBool _isLogin = false.obs;
  // TODO: Make it Login Response Model
  final RxString _profile = ''.obs;

  String get token => _token.value;
  String get profile => _profile.value;
  bool get isLogin => _isLogin.value;

  @override
  void onInit() {
    super.onInit();
    _token.value = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);
    var profileOffline = StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
    if (profileOffline.isNotEmpty && token.isNotEmpty) {
      _isLogin.value = true;
    }
  }

  Future<void> setToken(String value) async {
    await StorageService.to.setString(STORAGE_USER_TOKEN_KEY, value);
    _token.value = value;
  }

  Future<void> saveProfile(profile) async {
    _isLogin.value = true;
    StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
    // TODO: Set Token from Login Response Model
    // setToken();
  }

  Future<void> onLogout() async {
    await StorageService.to.remove(STORAGE_USER_TOKEN_KEY);
    await StorageService.to.remove(STORAGE_USER_PROFILE_KEY);
    _isLogin.value = false;
    _token.value = '';
  }
}
