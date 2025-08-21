import 'dart:convert';

class User {
  final String id;
  final String fullName;
  final String email;
  final String state;
  final String city;
  final String locality;
  final String password;

  User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.state,
    required this.city,
    required this.locality,
    required this.password,
  });
  // Serialization : Convert the User object to a Map
  // Map:  A Map is a   collection of key-value pairs
  // why: Converting to a map is an intermediate step that makes it easier to serialize
  // the object if formates like json for storage or transmission
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      'fullName': fullName,
      'email': email,
      'state': state,
      'city': city,
      'locality': locality,
      'password': password,
    };
  }

  // Serialization : Convert the map to json string
  // This method directly encodes the data from the Map into a json String
  // The json.encode() converts a Dart object (such as Map or List)
  // into a json string representation, making it suitable for communication
  //between different  systems
  String toJson() => json.encode(toMap());
}
