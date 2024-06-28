import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';
import 'package:marwan_s_application10/presentation/screen_five_screen/screen_five_screen.dart';
import 'package:marwan_s_application10/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:marwan_s_application10/provider/provider.dart';
import 'package:marwan_s_application10/widgets/custom_elevated_button.dart';
import 'package:marwan_s_application10/widgets/custom_text_form_field.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of<AppProvider>(context);

    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    // String email;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: double.infinity,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimary,
                theme.colorScheme.onPrimaryContainer,
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 53.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIstockphoto137,
                      height: 190.v,
                      width: 133.h,
                    ),
                    SizedBox(height: 45.v),
                    Text(
                      "Log In",
                      style: theme.textTheme.displaySmall,
                    ),
                    SizedBox(height: 37.v),
                    CustomTextFormField(
                      validator: (value) {
                        if (provider.emailController.text.isEmpty) {
                          return "email can't be empty";
                        } else {
                          return null;
                        }
                      },
                      hintText: "User Name",
                      textInputType: TextInputType.emailAddress,
                      controller: provider.emailController,
                    ),
                    SizedBox(height: 40.v),
                    CustomTextFormField(
                        controller: provider.passwordController,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value) {
                          if (provider.passwordController.text.isEmpty) {
                            return "password can't be empty";
                          } else if (provider.passwordController.text.length < 6) {
                            return "password is too short";
                          }
                          return null;
                        }),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: Text(
                          "Forget Password ?",
                          style: CustomTextStyles.labelLargeLightblueA100b2,
                        ),
                      ),
                    ),
                    SizedBox(height: 29.v),
                    CustomElevatedButton(
                      width: 168.h,
                      text: "Log in",
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                         provider.loginToAccount(context, provider);
                        }
                      },
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
                    ),
                    SizedBox(height: 41.v),
                    Row(
                      children: [
                        Text('Don’t have any account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ));
                            },
                            child: Text('Sign up' , style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  // bool checkEmails(String text) {
  //   if (text.isEmpty) {
  //     return false;
  //   }
  //
  //   if (!RegExp(
  //       r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
  //       .hasMatch(text)) {
  //     return false;
  //   }
  //   return true;
  // }
}
