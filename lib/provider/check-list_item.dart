import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class CheckListItem with ChangeNotifier {
  final title;
  bool isChecked;

  CheckListItem({
    this.title,
    this.isChecked = false,
  });
}
