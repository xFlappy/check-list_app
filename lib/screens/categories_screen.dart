import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './checklist_detail_screen.dart';
import './checklist_screen.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Checklist app'),
      ),
      body: Column(
        children: [
          // SUPERIOR PART
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hello Nicola!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                      radius: 50,
                    ),
                  )
                ],
              ),
            ),
          ),
          // INFERIOR PART
          Expanded(
              flex: 5,
              child: GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 5,
                itemBuilder: (ctx, i) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(CheckListScreen.routeName);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.red,
                        child: Text('Category $i'),
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
