import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = "https://docs.google.com/spreadsheets/d/1jkaMQzG8JbFSd3d2OpKSn51zgj5tswOIHQFSaHPhRJQ/edit?usp=sharing"; // Replace with your Google Sheets API URL

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
