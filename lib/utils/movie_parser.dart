import 'dart:convert';
import 'package:movie_app/models/movie.dart';

class MovieParser {
  static List<Movie> parse(String jsonString) {
    final List<dynamic> parsedJsonList = json.decode(jsonString);
    return parsedJsonList
        .map((jsonItem) => Movie.fromJson(jsonItem as Map<String, dynamic>))
        .toList();
  }
}

// MovieParser Class: This class has a method to convert a JSON string into a list of Movie objects.
// parse Method:
// It takes a string (which is in JSON format).
// It decodes that string into a list.
// For each item in that list, it creates a Movie object using a method called fromJson.
// Finally, it returns a list of all those Movie objects.
// So, in short, this code turns a JSON string about movies into actual movie objects you can work with in your program! 
