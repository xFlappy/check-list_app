import './check-list.dart';
import 'package:flutter/material.dart';

class CheckLists with ChangeNotifier {
  final String id;
  final String title;
  final bool isFavorite = false;
  List<CheckList> _items = [
    CheckList(
      id: 'l1',
      title: "Corsa d'orientamento",
      list: [
        'Bussola',
        'Gamasce',
        'Scarpe',
        'Pigiama',
        'Fascetta',
        'Chip',
      ],
    ),
    CheckList(
      id: 'l2',
      title: "Nuoto",
      list: [
        'Cuffia',
        'Occhialini',
        'Costume',
        'Shampoo',
        'Asciugamano',
        'Ciabatte',
      ],
    ),
    CheckList(
      id: 'l3',
      title: "Bici",
      list: [
        'Occhiali',
        'Borraccia',
        'Telefono',
        'Guanti',
        'Orologio',
        'SCarpe',
      ],
    ),
  ];
  final String authToken; //servono più tardi
  final String userId;

  CheckLists(this.id, this.title, this.authToken, this.userId, this._items);

  List<CheckList> get items {
    return [..._items];
  }
}
