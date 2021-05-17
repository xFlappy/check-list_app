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
          return Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ChecklistDetailScreen.routeName);
                },
                leading: CircleAvatar(
                  child: Icon(Icons.pool),
                ),
                title: Text('Checklist number $i'),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
