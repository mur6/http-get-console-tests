import 'dart:convert';
import 'package:http/http.dart' as http;

Future<double> getExchangeRate() async {
    final response = await http.get('https://api.exchangerate-api.com/v4/latest/JPY');
    if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        double rate = data['rates']['USD'];
        return rate;
    } else {
        throw Exception('Failed to load exchange rate');
    }
}
