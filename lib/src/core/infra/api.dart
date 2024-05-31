import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class API {
  static final String baseUrl = dotenv.env['RICK_AND_MORTY_API_URL'] ?? "";

  get(String path) async {
    final response = await http.get(Uri.parse("$baseUrl/$path"));
    return jsonDecode(utf8.decode(response.bodyBytes));
  }
}
