// lib/app.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'data/firebase_remote_store.dart';
import 'data/user_repository.dart';
import 'domain/get_user_data_usecase.dart';

final remoteStoreRepositoryProvider = Provider<RemoteStoreRepository>((ref) {
  // Return the desired implementation here
  return FirebaseRemoteStore(); // Change to GraphQLRemoteStore when needed
});

final getUserDataUsecaseProvider = Provider<GetUserDataUsecase>((ref) {
  final userRepository = ref.watch(remoteStoreRepositoryProvider);
  return GetUserDataUsecase(userRepository);
});
