import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/checklist_detail_screen.dart';
import './screens/checklist_screen.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checklist APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.green,
      ),
      home: CategoriesScreen(),
      routes: {
        CheckListScreen.routeName: (ctx) => CheckListScreen(),
        ChecklistDetailScreen.routeName: (ctx) => ChecklistDetailScreen(),
      },
    );

    // return MaterialApp(
    //   title: 'CheckListApp',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     accentColor: Colors.green,
    //   ),
    //   home: CategoriesScreen(),
    // );
  }
}
