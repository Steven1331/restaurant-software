import 'package:flutter/material.dart';
import 'package:restaurantsoftware/component/calendar.dart';
import 'package:restaurantsoftware/employee/routeEmployee.dart';
import 'package:restaurantsoftware/loginPage.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
    @override
  Widget build(BuildContext context){
      return MaterialApp(
        home: LoginPage(),
      );
    }
}