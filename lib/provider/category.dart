import 'package:flutter/material.dart';

import './check-list.dart';
import './check-list_item.dart';
import './check-lists.dart';

class Category with ChangeNotifier {
  // TEST DATA
  List<CheckLists> _categoryItems = [
    CheckLists(
      'c1',
      'Sport',
      [
        CheckList(
          id: 'l1',
          title: "Corsa d'orientamento",
          items: [
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
          items: [
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
          items: [
            CheckListItem(title: 'Occhiali'),
            CheckListItem(title: 'Borraccia'),
            CheckListItem(title: 'Telefono'),
            CheckListItem(title: 'Guanti'),
            CheckListItem(title: 'Orologio'),
            CheckListItem(title: 'Scarpe'),
          ],
        ),
      ],
    ),
    CheckLists(
      'c2',
      'Vacanze',
      [
        CheckList(
          id: 'l11',
          title: 'Mare',
          items: [
            CheckListItem(title: 'Costume'),
            CheckListItem(title: 'Occhialini'),
            CheckListItem(title: 'Materiale sport'),
            CheckListItem(title: 'Pallone da calcio'),
          ],
        ),
        CheckList(
          id: 'l12',
          title: 'Montagna',
          items: [
            CheckListItem(title: 'Scarponi'),
            CheckListItem(title: 'Zaino'),
            CheckListItem(title: 'Tenda'),
            CheckListItem(title: 'Mantellina'),
          ],
        ),
      ],
    ),
    CheckLists(
      'c3',
      'Feste',
      [
        CheckList(
          id: 'l21',
          title: 'Grigliata',
          items: [
            CheckListItem(title: 'Carbonella'),
            CheckListItem(title: 'Carne'),
            CheckListItem(title: 'Felpa'),
            CheckListItem(title: 'Pallone da calcio'),
          ],
        ),
        CheckList(
          id: 'l22',
          title: 'Lago',
          items: [
            CheckListItem(title: 'Costume'),
            CheckListItem(title: 'Asciugamano'),
            CheckListItem(title: 'Cibo'),
            CheckListItem(title: 'Crema da sole'),
          ],
        ),
      ],
    ),
  ];
  // servono per l'autenticazion e copiato dal shopApp
  final String authToken;
  final String userId;

  Category(
    this.authToken,
    this.userId,
    this._categoryItems,
  );

  //GETTERS
  List<CheckLists> get categoryItems {
    return [..._categoryItems];
  }

  //METHODS
  //metodo per caricare le diverse categorie
  Future<void> fetchAndSetChecklists([bool filterByUser = false]) async {
    return;
  }

  //metodo per creare una nuova categoria

  //metodo per aggiornare le categorie -> dopo un cambiamento

  //metodo per eliminare una categoria

}
