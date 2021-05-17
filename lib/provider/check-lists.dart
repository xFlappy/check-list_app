import 'package:flutter/material.dart';

import './check-list.dart';
import './check-list_item.dart';

class CheckLists with ChangeNotifier {
  final String id;
  final String title;
  final bool isFavorite = false;
  final List<CheckList> _items;

  // //penso che non servono ma li lascio già qui per sicurezza
  // final String authToken;
  // final String userId;

  CheckLists(
    this.id,
    this.title,
    // this.authToken,
    // this.userId,
    this._items,
  );

  //GETTERS
  List<CheckList> get items {
    return [..._items];
  }

  //METHODS
  //caricare tutte le liste in questa categoria
  Future<void> fetchAndSetChecklist([bool filterByUser = false]) async {
    return;
  }

  //metodo per creare una nuova lista

  //metodo per aggiornare una lista -> dopo aver aggiunto o tolto oggetti

  //metodo per eliminare una lista
}
