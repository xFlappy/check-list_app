import 'package:checklist_app/screens/checklist_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckListScreen extends StatelessWidget {
  static const routeName = '/checklist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Name '),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (ctx, i) {
          return Container(
            height: 70,
            alignment: Alignment.centerLeft,
            child: Card(
              elevation: 1,
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              child: ListTile(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ChecklistDetailScreen.routeName);
                },
                leading: CircleAvatar(
                  child: Icon(Icons.pool),
                ),
                title: Text('Checklist number $i'),
              ),
            ),
          );
        },
      ),
    );
  }
}
