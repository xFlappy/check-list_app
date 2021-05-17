import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import './check-list_item.dart';

class CheckList with ChangeNotifier {
  final String id;
  final String title; //titolo/nome della lista
  final List<CheckListItem> items;

  CheckList({
    @required this.id,
    @required this.title,
    @required this.items,
  });

  //METHODS
  //caricare tutte le liste in questa categoria
  Future<void> fetchAndSetChecklist([bool filterByUser = false]) async {
    return;
  }

  //metodo per aggiungere un nuovo oggetto

  //metodo per aggiornare una lista

  //metodo per eliminare una lista

}
