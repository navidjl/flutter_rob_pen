import 'package:robotsandpencils/data/user_repository.dart';
import '../models/rpannotation.dart';
import '../models/rpcomment.dart';

class GraphQLRemoteStore implements RemoteStoreRepository {
  @override
  Future<void> saveComment(RPComment comment) async {
    // Implement GraphQL save logic for comments
  }

  @override
  Future<void> saveAnnotation(RPAnnotation annotation) async {
    // Implement GraphQL save logic for annotations
  }
}