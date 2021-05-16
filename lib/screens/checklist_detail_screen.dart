import 'package:flutter/material.dart';

class ChecklistDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Name'),
      ),
      body: Container(
        color: Colors.green,
        width: double.infinity,
        child: Column(
          children: [
            //SUPERIOR PART
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
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
                  color: Colors.amber,
                ),
                padding: EdgeInsets.all(20),
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (ctx, i) {
                    return Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      height: 70,
                      child: Text('Elemento numero $i'),
                      // color: Colors.pink,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
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
