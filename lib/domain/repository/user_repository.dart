import '../value_object/user_info.dart';

abstract class UserRepository {
  Stream<UserInfo?> userInfoChangedBroadcaster();
  Future<UserInfo> getUserInfo();
  Future<String> updateNickname(String nickname);
  Future<void> updateEmail(
    String email,
  );
}
