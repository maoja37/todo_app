import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/pages/home_page.dart';
import 'package:todo_app/provider/todos.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 static final String title = 'Todo App';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,title: title,
        theme: ThemeData(
          
            
          primarySwatch: Colors.blue,
           scaffoldBackgroundColor: Color(0xFFf6f5ee),
        ),
        home: HomePage(),
      ),
    );
  }
}
