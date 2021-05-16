import 'package:flutter/material.dart';

class CheckList with ChangeNotifier {
  final String id;
  final String title; //titolo/nome della lista
  final List<String> list;

  CheckList({this.id, this.title, this.list});
}
