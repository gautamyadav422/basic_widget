import 'package:basic_widget/login.dart';
import 'package:basic_widget/pages/home.dart';
import 'package:basic_widget/registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _light = true;
  ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  );
  ThemeData _darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,
      debugShowCheckedModeBanner: false,
      title: "Basics Widgets",
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login Page"),
            centerTitle: true,
            actions: [
              Switch(
                activeColor: Colors.black,
                inactiveTrackColor: Colors.grey,
                activeTrackColor: Colors.white,
                value: _light,
                onChanged: (val) {
                  setState(
                    () {
                      _light = val;
                    },
                  );
                },
              ),
            ],
          ),
          body: LoginPage(),
        ),
      ),
      routes: {
        '/login': (context) => MyApp(),
        '/homePage': (context) => HomePage(),
        '/register': (context) => Registration(),
      },
    );
  }
}
