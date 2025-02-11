# Incorrectly Handling API Response Structure in Dart

This repository demonstrates a common error in Dart code when handling API responses: incorrectly assuming the structure of the response body. The `bug.dart` file shows the problematic code, which throws an exception if the response is not a list.  The solution, in `bugSolution.dart`, demonstrates how to safely handle various response structures.

## Problem
The original code assumes the API response body will always be a list. If the server returns a different structure (e.g., an object, an empty response), the `jsonDecode` call will fail, leading to an unhandled exception.

## Solution
The improved code in `bugSolution.dart` addresses this by checking the response body's type before accessing its elements. This ensures robust handling of various possible responses.
