import 'dart:io';

void main() {
  // String Manipulation
  print("Enter a string:");
  String userInput = stdin.readLineSync()!;
  demonstrateStringManipulation(userInput);

  // Collections
  List<String> results = [];
  results.add(userInput);
  
  // Save the results to a file
  saveToFile(results);

  // Date and Time
  logDateTime(results);
}

void demonstrateStringManipulation(String input) {
  // String concatenation
  String concatenated = input + " is awesome!";
  print("Concatenated String: $concatenated");

  // String interpolation
  String interpolated = "Length of '$input' is ${input.length}.";
  print(interpolated);

  // Substring extraction
  String substring = input.substring(0, 3);
  print("Substring (first 3 chars): $substring");

  // Case conversion
  String upperCase = input.toUpperCase();
  String lowerCase = input.toLowerCase();
  print("Uppercase: $upperCase");
  print("Lowercase: $lowerCase");

  // Reverse the string
  String reversed = input.split('').reversed.join('');
  print("Reversed String: $reversed");

  // Count length
  print("Length of the input string: ${input.length}");
}

void saveToFile(List<String> results) {
  try {
    File file = File('results.txt');
    results.forEach((result) {
      file.writeAsStringSync('$result\n', mode: FileMode.append);
    });
    print("Results saved to results.txt");
  } catch (e) {
    print("Error writing to file: $e");
  }
}

void logDateTime(List<String> results) {
  DateTime now = DateTime.now();
  print("Log Time: ${now.toIso8601String()}");
  for (var result in results) {
    print("Entry: $result, Date: ${now.toIso8601String()}");
  }
}
