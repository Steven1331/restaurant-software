import 'package:flutter/material.dart';
import 'package:restaurantsoftware/component/calendar.dart';
import 'package:restaurantsoftware/employee/employee.dart';
import 'package:restaurantsoftware/employee/routeEmployee.dart';
import 'package:restaurantsoftware/loginPage.dart';
import 'package:restaurantsoftware/manager/employeeProfile.dart';
import 'package:restaurantsoftware/manager/signup_screen.dart';
import 'package:restaurantsoftware/manager/weekly_schedule.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Employee emp = new Employee(name: 'John', lastName: 'Doe', email: 'something@gmail.com', role: 'Server', uid: '1234');
    @override
  Widget build(BuildContext context){
      return MaterialApp(
        home: WeeklySchedulePage(),
      );
    }
}