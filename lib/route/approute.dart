import 'package:flutter/material.dart';
import '../views/note/note_screen.dart';
import '../views/hompagestepone/homepage.dart';
import '../views/login_page/loginpage.dart';
import '../views/note/ttt.dart';

class AppRoute {
  static const String homepage = "HoginPage";
  static const String loginPage = "LoginPage";
  static const String notescreen = "NoteScreen";
  static const String test = "ttt";
  static Route<dynamic> ongenratedRoute(RouteSettings routesettings) {
    switch (routesettings.name) {
      case homepage:
        return MaterialPageRoute(
          builder: (context) => const HomePageStepOne(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const Loginpage(),
        );
      case notescreen:
        return MaterialPageRoute(
          builder: (context) => const NoteScreen(),
        );
        case test:
        return MaterialPageRoute(
          builder: (context) => const Test(),
        );
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [Text("No Found Page !!")],
                )));
    }
  }
}
