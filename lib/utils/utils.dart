import 'dart:convert';
import 'package:flutter/services.dart';

class Utils {
  static Future<Map> readJsonFile(jsonRoute) async {
    final String response = await rootBundle.loadString(jsonRoute);
    final Map decoded = await json.decode(response);
    print(decoded);
    return decoded;
  }
}
