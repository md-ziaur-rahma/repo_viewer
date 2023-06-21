import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../../../core/theme/ba_app_layouts.dart';
import '../../../core/values/images.dart';
import '../../../core/widgets/ba_custom_text_form_field.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return baBlankLayout(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              titleSection(),
              bodySection(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget titleSection() => Column(
      children: [
        Image(
          image: const AssetImage(AssetImages.signupImage),
          height: Get.height * 0.3,
        ),
        Text(LocaleKeys.welcome.tr),
      ],
    );

Widget bodySection() {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [logoSection(), formSection(), buttonSection()],
        ),
      ),
    ),
  );
}

Widget logoSection() {
  return const Icon(Icons.logo_dev_rounded, size: 70);
}

Widget formSection() {
  return Form(
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          baCustomTextFormField(icon: Icons.person),
          const SizedBox(height: 10),
          baCustomTextFormField(icon: Icons.key_rounded),
          const SizedBox(height: 10),
          baCustomTextFormField(icon: Icons.key_rounded),
        ],
      ),
    ),
  );
}

Widget buttonSection() {
  return ElevatedButton(onPressed: () {}, child: Text(LocaleKeys.signup.tr));
}
