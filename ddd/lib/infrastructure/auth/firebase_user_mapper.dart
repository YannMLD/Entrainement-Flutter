import 'package:ddd/domain/auth/user.dart' as appUser;
import 'package:ddd/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebaseUser;

extension FirebaseUserDomainX on firebaseUser.User {
  appUser.User toDomain() {
    return appUser.User(id: UniqueId.fromUniqueString(uid));
  }
}
