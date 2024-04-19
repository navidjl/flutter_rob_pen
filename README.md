# robotsandpencils
---

# Remote Store Repository with Riverpod

## Overview
This project demonstrates a solution for saving instances of `RPComment` and `RPAnnotation` 
to a Remote Store using the Repository Pattern, with the flexibility to switch between 
different Remote Store implementations. The solution utilizes Riverpod for dependency 
injection and state management in Flutter.

## Project Structure
```
lib/
|-- data/
|   |-- firebase_remote_store.dart
|   |-- graph_ql_repository.dart
|   |-- user_repository.dart
|-- domain/
|   |-- get_user_data_usecase.dart
|-- models/
|   |-- rpannotation.dart
|   |-- rpcomment.dart
|-- screen/
|   |-- home_screen.dart
|-- main.dart
|-- app.dart
```

## Approach
- Repository Pattern: The repository interface `RemoteStoreRepository` abstracts the data access logic from the Flutter UI layer. Concrete repository implementations for Firebase and GraphQL Remote Stores encapsulate the specific implementation details.
- Riverpod: The project uses Riverpod for dependency injection and state management. The `remoteStoreRepositoryProvider` is defined in `app.dart` and used to provide instances of `RemoteStoreRepository` to the Flutter UI components.

## Usage
1. Ensure Flutter and Dart are installed on your machine.
2. Clone this repository.
3. Run `flutter pub get` to install dependencies.
4. Run the Flutter app using `flutter run`.

## Future Considerations and Improvements
1. Unit Testing: Implement unit tests for the repository classes and UI components to ensure the correctness of the code.
2. Error Handling: Enhance error handling mechanisms to gracefully handle exceptions and errors during API calls.
3. Caching: Implement caching mechanisms to improve performance and offline capabilities.
4. Dependency Injection: Explore other dependency injection frameworks or techniques for more advanced use cases and flexibility.
5. Code Refactoring: Refactor code to improve readability, maintainability, and adherence to best practices.
