import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/category.dart';
import './checklist_detail_screen.dart';
import '../widgets/add_checklist_dialog.dart';

class CheckListScreen extends StatelessWidget {
  static const routeName = '/checklist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Name '),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => showDialog(
              context: context,
              builder: (_) => AddChecklistDialog(),
            ),
            // onPressed: () => Provider.of<Category>(context, listen: false)
            //     .addChecklist(null),
          ),
        ],
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
