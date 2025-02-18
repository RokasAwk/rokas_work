class UserInfo {
  final String userId;
  final String email;
  final String nickName;

  UserInfo({
    required this.userId,
    required this.email,
    required this.nickName,
  });

  factory UserInfo.empty({String? uid}) {
    return UserInfo(
      userId: uid ?? '',
      email: '',
      nickName: '',
    );
  }

  UserInfo copyWith({
    String? email,
    String? nickname,
  }) {
    return UserInfo(
      userId: userId,
      email: email ?? this.email,
      nickName: nickname ?? nickName,
    );
  }

  @override
  bool operator ==(covariant UserInfo other) {
    if (identical(this, other)) return true;

    return other.userId == userId &&
        other.email == email &&
        other.nickName == nickName;
  }

  @override
  int get hashCode {
    return userId.hashCode ^ email.hashCode ^ nickName.hashCode;
  }
}
