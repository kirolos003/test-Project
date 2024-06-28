import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marwan_s_application10/presentation/screen_four_screen/screen_four_screen.dart';
import 'package:marwan_s_application10/provider/provider.dart';
import 'package:provider/provider.dart';
import 'Network/remote/dio_helper.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ThemeHelper().changeTheme('primary');
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => AppProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          home: LoginScreen(),
          title: 'marwan_s_application10',
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
