import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_App/providers/db_provider.dart';
import 'package:todo_App/ui/screens/main_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DBProvider>(
      create: (BuildContext context) {
        return DBProvider();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MainScreen(),
      ),
    );
  }
}
