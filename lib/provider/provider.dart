// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:marwan_s_application10/components.dart';
import '../Network/remote/dio_helper.dart';
import '../presentation/screen_one_screen/screen_one_screen.dart';

class AppProvider extends ChangeNotifier {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void loginToAccount(BuildContext context, AppProvider provider) async {
    try {
      print(provider.emailController.text);
      print(provider.passwordController.text);
      final response = await DioHelper.postData(
          url: 'login',
          data: {
            'email': provider.emailController.text,
            'password': provider.passwordController.text,
          });
      print('HTTP Status Code: ${response?.statusCode}');
      if (response != null && response.statusCode == 200) {
        print('Login Success');
        navigateTo(context, ScreenOneScreen());
      } else {
        print("Wrong email pr password. Status code: ${response?.statusCode}");
      }
    } catch (e) {
      print("Sever Exception: $e");
    }
  }
  void signUp(BuildContext context, AppProvider provider) async {
    try {
      print(provider.emailController.text);
      print(provider.passwordController.text);
      final response = await DioHelper.postData(
          url: 'users',
          data: {
            'id': 0,
            'name': userNameController.text,
            'phone': phoneController.text,
            'email': emailController.text,
            'password': passwordController.text,
          });
      print('HTTP Status Code: ${response?.statusCode}');
      if (response != null && response.statusCode == 200) {
        print('Login Success');
        navigateTo(context, ScreenOneScreen());
      } else {
        print("Wrong email pr password. Status code: ${response?.statusCode}");
      }
    } catch (e) {
      print("Sever Exception: $e");
    }
  }
}