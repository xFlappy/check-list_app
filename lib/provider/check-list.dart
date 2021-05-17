import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import './check-list_item.dart';

class CheckList with ChangeNotifier {
  final String id;
  final String title; //titolo/nome della lista
  final List<CheckListItem> list;

  CheckList({
    @required this.id,
    @required this.title,
    @required this.list,
  });
}
