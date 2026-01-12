import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/weather.dart';

class WeatherService {
  static const String apiKey = 'yourAPI';
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  static Future<Weather> getWeather(String cityName) async {
    try {
      // Step 1: Construct the complete API URL with correct variable names and separators.
      final String url = '$baseUrl?q=$cityName&appid=$apiKey&units=metric';

      // Step 2: Make the HTTP GET request.
      final http.Response response = await http.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
      );

      // Step 3: Check the HTTP status.
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        return Weather.fromJson(data);
      } else if (response.statusCode == 404) {
        throw Exception('City not found, please check the spelling');
      } else {
        throw Exception('Failed to load weather. Status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching weather: $e');
    }
  }
}
