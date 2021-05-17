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

  // //method to change the value of the checkbox
  // void _setCheckValue(bool newValue) {
  //   isChecked = newValue;
  //   notifyListeners();
  // }

  // //cambia lo stato della checkbox
  // Future<void> toggleCheckStatus(String token, String userId) async {
  //   final oldStatus = isChecked;
  //   isChecked = !isChecked;
  //   notifyListeners();
  //   final url = Uri.parse('INSERIRE URL CORRETTA!!!!');
  //   try {
  //     final response = await http.put(
  //       url,
  //       body: json.encode(
  //         isChecked,
  //       ),
  //     );
  //     if (response.statusCode >= 400) {
  //       _setCheckValue(oldStatus);
  //     }
  //   } catch (error) {
  //     _setCheckValue(oldStatus);
  //   }
  // }

  //metodo per aggiungere un oggetto

  //metodo per modificare un oggetto

  //metodo per eliminare un oggetto
}
