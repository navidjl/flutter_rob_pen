import 'package:robotsandpencils/data/user_repository.dart';

import '../models/rpannotation.dart';
import '../models/rpcomment.dart';

class FirebaseRemoteStore implements RemoteStoreRepository {
  @override
  Future<void> saveComment(RPComment comment) async {
    // Implement Firebase save logic for comments
  }

  @override
  Future<void> saveAnnotation(RPAnnotation annotation) async {
    // Implement Firebase save logic for annotations
  }
}
