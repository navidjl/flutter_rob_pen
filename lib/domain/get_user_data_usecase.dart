import 'package:robotsandpencils/models/rpannotation.dart';
import 'package:robotsandpencils/models/rpcomment.dart';

import '../data/user_repository.dart';


class GetUserDataUsecase {
  final RemoteStoreRepository remoteStoreRepository;

  GetUserDataUsecase(this.remoteStoreRepository);

  Future<void> saveAnnotation(RPComment rpComment) async {
    return await remoteStoreRepository.saveComment(rpComment);
  }

  Future<void> saveComment(RPAnnotation rpAnnotation) async {
    return await remoteStoreRepository.saveAnnotation(rpAnnotation);
  }
}
