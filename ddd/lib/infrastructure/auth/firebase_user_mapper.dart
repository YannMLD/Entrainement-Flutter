import 'package:firebase_auth/firebase_auth.dart' as firebase_user;
import 'package:ddd/domain/auth/user.dart' as app_user;
import 'package:ddd/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase_user.User {
  app_user.User toDomain() {
    return app_user.User(id: UniqueId.fromUniqueString(uid));
  }
}
