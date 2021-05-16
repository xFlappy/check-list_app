import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:checklist_app/screens/checklist_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckListApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.green,
      ),
      home: ChecklistDetailScreen(),
    );
  }
}
