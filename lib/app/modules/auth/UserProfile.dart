import 'dart:convert';

/// user : {"id":1,"full_name":"user","email":"user@gmail.com","phone_number":"3645+65465","balance":"6546541645","profile_image":"sgfds","created_at":null,"updated_at":null}
/// token : "1|0bLEBxNw8Lnl1t9LOkIyxj4N518yHJ1GJMR94xRv9dc7675f"

UserProfile userProfileFromJson(String str) =>
    UserProfile.fromJson(json.decode(str));
String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  UserProfile({
    User? user,
    String? token,
  }) {
    _user = user;
    _token = token;
  }

  UserProfile.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }
  User? _user;
  String? _token;
  UserProfile copyWith({
    User? user,
    String? token,
  }) =>
      UserProfile(
        user: user ?? _user,
        token: token ?? _token,
      );
  User? get user => _user;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }
}

/// id : 1
/// full_name : "user"
/// email : "user@gmail.com"
/// phone_number : "3645+65465"
/// balance : "6546541645"
/// profile_image : "sgfds"
/// created_at : null
/// updated_at : null

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    num? id,
    String? fullName,
    String? email,
    String? phoneNumber,
    String? balance,
    String? profileImage,
    dynamic createdAt,
    dynamic updatedAt,
  }) {
    _id = id;
    _fullName = fullName;
    _email = email;
    _phoneNumber = phoneNumber;
    _balance = balance;
    _profileImage = profileImage;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _fullName = json['full_name'];
    _email = json['email'];
    _phoneNumber = json['phone_number'];
    _balance = json['balance'];
    _profileImage = json['profile_image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _fullName;
  String? _email;
  String? _phoneNumber;
  String? _balance;
  String? _profileImage;
  dynamic _createdAt;
  dynamic _updatedAt;
  User copyWith({
    num? id,
    String? fullName,
    String? email,
    String? phoneNumber,
    String? balance,
    String? profileImage,
    dynamic createdAt,
    dynamic updatedAt,
  }) =>
      User(
        id: id ?? _id,
        fullName: fullName ?? _fullName,
        email: email ?? _email,
        phoneNumber: phoneNumber ?? _phoneNumber,
        balance: balance ?? _balance,
        profileImage: profileImage ?? _profileImage,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get fullName => _fullName;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String? get balance => _balance;
  String? get profileImage => _profileImage;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['full_name'] = _fullName;
    map['email'] = _email;
    map['phone_number'] = _phoneNumber;
    map['balance'] = _balance;
    map['profile_image'] = _profileImage;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
