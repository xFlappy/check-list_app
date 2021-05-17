import 'package:flutter/material.dart';

import './check-list.dart';
import './check-list_item.dart';
import './check-lists.dart';

class Category with ChangeNotifier {
  List<CheckLists> _items = [
    CheckLists(
      'c1',
      'Sport',
      [
        CheckList(
          id: 'l1',
          title: "Corsa d'orientamento",
          list: [
            CheckListItem(title: 'Bussola'),
            CheckListItem(title: 'Gamasce'),
            CheckListItem(title: 'Scarpe'),
            CheckListItem(title: 'Pigiama'),
            CheckListItem(title: 'Fascetta'),
            CheckListItem(title: 'Chip'),
          ],
        ),
        CheckList(
          id: 'l2',
          title: "Nuoto",
          list: [
            CheckListItem(title: 'Cuffia'),
            CheckListItem(title: 'Occhialini'),
            CheckListItem(title: 'Costume'),
            CheckListItem(title: 'Shampoo'),
            CheckListItem(title: 'Asciugamano'),
            CheckListItem(title: 'Ciabatte'),
          ],
        ),
        CheckList(
          id: 'l3',
          title: "Bici",
          list: [
            CheckListItem(title: 'Occhiali'),
            CheckListItem(title: 'Borraccia'),
            CheckListItem(title: 'Telefono'),
            CheckListItem(title: 'Guanti'),
            CheckListItem(title: 'Orologio'),
            CheckListItem(title: 'Scarpe'),
          ],
        ),
      ],
    )
  ];
}
