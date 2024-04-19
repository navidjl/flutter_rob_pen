import '../models/rpannotation.dart';
import '../models/rpcomment.dart';

// RemoteStoreRepository.dart
abstract class RemoteStoreRepository {
  Future<void> saveComment(RPComment comment);
  Future<void> saveAnnotation(RPAnnotation annotation);
}