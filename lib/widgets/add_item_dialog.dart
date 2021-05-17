import 'package:flutter/material.dart';

import '../provider/check-list_item.dart';

class AddItemDialog extends StatefulWidget {
  @override
  _AddItemDialogState createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<AddItemDialog> {
  String title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add Item',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ItemFormWidget(
            onChangedTitle: (title) => setState(() => this.title = title),
            onSavedItem: () {},
          )
        ],
      ),
    );
  }
}

class ItemFormWidget extends StatelessWidget {
  final String title;
  final ValueChanged<String> onChangedTitle;
  final VoidCallback onSavedItem;

  ItemFormWidget({
    this.title,
    @required this.onChangedTitle,
    @required this.onSavedItem,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildTitle(),
          SizedBox(
            height: 32,
          ),
          buildButton(),
        ],
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }

  Widget buildTitle() => TextFormField(
        initialValue: title,
        onChanged: onChangedTitle,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Item Name',
        ),
        validator: (title) {
          if (title.isEmpty) {
            return 'Text cannot be empty';
          }
          return null;
        },
      );

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onSavedItem,
          child: Text('Save'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
        ),
      );
}
