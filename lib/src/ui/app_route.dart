import 'package:FIRST_APP/src/screen/Home/home.dart';
import 'package:FIRST_APP/src/screen/Login/login.dart';
import 'package:FIRST_APP/src/screen/Register/register.dart';
import 'package:flutter/material.dart';

class AppRoute extends StatefulWidget {
  @override
  _AppRouteState createState() => _AppRouteState();
}

class _AppRouteState extends State<AppRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.tealAccent[700],
        accentColor: Colors.grey[200]
      ),
      initialRoute: 'login-screen',
      onGenerateRoute: onGenerateRoute,
    );
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print('settings  $settings');
    print('settings arguments ${settings.arguments}');
    print('settings name ${settings.name}');
    switch (settings.name) {
      case 'login-screen':
        return MaterialPageRoute(
          builder: (ctx) => LoginScreen(),
          //settings: const RouteSettings(name: 'login-screen'),
        );
        break;
      case RegisterScreen.routeName:
        return MaterialPageRoute(
          builder: (ctx) => RegisterScreen(),
         // settings: const RouteSettings(name: 'register-screen'),
        );
        case 'home-screen':
        return MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        //  settings: const RouteSettings(name: 'home-screen'),
        );
        break;
      default:
    }
  }
}
