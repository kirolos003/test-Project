import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 mini - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13MiniOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.screenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 12 Pro Mockup Front View label",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone12ProMockupFrontViewLabelScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "iPhone 12 Pro Mockup Front View label One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .iphone12ProMockupFrontViewLabelOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.screenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.screenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "screen Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.screenFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "screen Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.screenFiveScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
