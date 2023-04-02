import 'dart:convert';
import 'package:flutter/services.dart';

class Utils {
  static Future<Map<String, dynamic>> readJsonFile(jsonRoute) async {
    final String response = await rootBundle.loadString(jsonRoute);
    final Map<String, dynamic> decoded = await json.decode(response);
    print(decoded);
    return decoded;
  }
}
