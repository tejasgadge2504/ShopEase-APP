import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = "https://script.google.com/macros/s/AKfycbxnQFVlIAm-Po-uJaIx7-9l5TICXYjgwdf_vFyOU-gyqVag4CaDUc5TvCl7pjvcMQvJ/exec"; // Replace with your Google Sheets API URL

  Future<List<Map<String, dynamic>>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        var responseBody = response.body;
        if (responseBody.isEmpty) {
          throw Exception('Empty response from the server');
        }
        List<dynamic> jsonResponse = json.decode(responseBody);
        return jsonResponse.map((data) => data as Map<String, dynamic>).toList();
      } else {
        throw Exception('Failed to load products: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error fetching products: $e');
    }
  }
}
