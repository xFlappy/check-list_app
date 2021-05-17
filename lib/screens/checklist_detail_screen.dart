import 'dart:io';

import 'package:checklist_app/provider/category.dart';
import 'package:checklist_app/provider/check-lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/check-list_item.dart';
import '../widgets/add_item_dialog.dart';

class ChecklistDetailScreen extends StatefulWidget {
  static const routeName = '/cheklist-detail';

  @override
  _ChecklistDetailScreenState createState() => _ChecklistDetailScreenState();
}

class _ChecklistDetailScreenState extends State<ChecklistDetailScreen> {
  bool _checkBoxTest = false;
  //ricordarsi che se le checkbox li cambio in un altro widget questo può essere stateless
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(),
            child: Container(
              child: Text('Prova'),
              alignment: Alignment.center,
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text('Checklist Name'),
              actions: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (_) => AddItemDialog(),
                  ),
                ),
              ],
            ),
            body: Container(
              color: Colors.blue,
              width: double.infinity,
              child: Column(
                children: [
                  //SUPERIOR PART
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'List Title',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Number of elements',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //INFERIOR PART
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(20),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 12,
                        itemBuilder: (ctx, i) {
                          return Column(
                            children: [
                              ListTile(
                                title: Text('Errore numero $i'),
                                trailing: Checkbox(
                                  value: _checkBoxTest,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkBoxTest = value;
                                    });
                                  },
                                ),
                              ),
                              Divider(),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
