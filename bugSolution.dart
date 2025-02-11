```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data is List) {
        // Process data as a list
        print('Processing list data: $data');
      } else if (data is Map) {
        // Process data as a map
        print('Processing map data: $data');
      } else if (data == null) {
        print('Received empty response');
      } else {
        // Handle other data types or errors
        print('Unexpected data type: $data');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // ... handle error ...
  }
}
```