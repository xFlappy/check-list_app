import 'package:flutter/material.dart';

import './check-list.dart';
import './check-list_item.dart';

class CheckLists with ChangeNotifier {
  final String id;
  final String title;
  final bool isFavorite = false;
  //QUESTI DAT ISERVONO ALL' INIZIO PER FARLO FUNZIONARE
  List<CheckList> _items = [
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
  ];
  // //servono più tardi
  // final String authToken;
  // final String userId;

  CheckLists(
    this.id,
    this.title,
    // this.authToken,
    // this.userId,
    this._items,
  );

  List<CheckList> get items {
    return [..._items];
  }
}
