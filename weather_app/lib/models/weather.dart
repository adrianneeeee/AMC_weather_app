class Weather {
  //properties
  final String city;
  final double temperature;
  final String condition;
  final String description;
  final int humidity;
  final double windSpeed;



  Weather({
    //constructor
   required this.city,
   required this.temperature,
    required this.condition,
   required this.description,
   required this.humidity,
   required this.windSpeed,
});
  //special constructor
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        city: json['name'] ?? 'Unknown',
        temperature: (json['main']['temp'] ?? 0).toDouble(),
        condition: json['weather'][0]['main'] ?? 'unknown',
        description: json['weather'][0]['main'] ?? 'unknown',
        humidity: json['main']['humidity'] ?? 0,
        windSpeed: (json['wind']['speed'] ?? 0).toDouble(),
    );
  }


}