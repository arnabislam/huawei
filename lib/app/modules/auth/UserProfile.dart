import 'dart:convert';

/// user : {"id":1,"username":"admin","email":"admin@gmail.com","username_owner_name":"dsf","roll":"dsf","credite_limit":"23443435","credit_used":"43543","available_credit":"436434","cash_balance":"564454","outtanding_transaction":"435","status":"Admin","created_at":null,"updated_at":null}
/// token : "1|46gQq7GMKED12LOhsIqXao5oCVxnWtuHXnoooQ5Z1b130ba8"

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
/// username : "admin"
/// email : "admin@gmail.com"
/// username_owner_name : "dsf"
/// roll : "dsf"
/// credite_limit : "23443435"
/// credit_used : "43543"
/// available_credit : "436434"
/// cash_balance : "564454"
/// outtanding_transaction : "435"
/// status : "Admin"
/// created_at : null
/// updated_at : null

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    num? id,
    String? username,
    String? email,
    String? usernameOwnerName,
    String? roll,
    String? crediteLimit,
    String? creditUsed,
    String? availableCredit,
    String? cashBalance,
    String? outtandingTransaction,
    String? status,
    dynamic createdAt,
    dynamic updatedAt,
  }) {
    _id = id;
    _username = username;
    _email = email;
    _usernameOwnerName = usernameOwnerName;
    _roll = roll;
    _crediteLimit = crediteLimit;
    _creditUsed = creditUsed;
    _availableCredit = availableCredit;
    _cashBalance = cashBalance;
    _outtandingTransaction = outtandingTransaction;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _usernameOwnerName = json['username_owner_name'];
    _roll = json['roll'];
    _crediteLimit = json['credite_limit'];
    _creditUsed = json['credit_used'];
    _availableCredit = json['available_credit'];
    _cashBalance = json['cash_balance'];
    _outtandingTransaction = json['outtanding_transaction'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _username;
  String? _email;
  String? _usernameOwnerName;
  String? _roll;
  String? _crediteLimit;
  String? _creditUsed;
  String? _availableCredit;
  String? _cashBalance;
  String? _outtandingTransaction;
  String? _status;
  dynamic _createdAt;
  dynamic _updatedAt;
  User copyWith({
    num? id,
    String? username,
    String? email,
    String? usernameOwnerName,
    String? roll,
    String? crediteLimit,
    String? creditUsed,
    String? availableCredit,
    String? cashBalance,
    String? outtandingTransaction,
    String? status,
    dynamic createdAt,
    dynamic updatedAt,
  }) =>
      User(
        id: id ?? _id,
        username: username ?? _username,
        email: email ?? _email,
        usernameOwnerName: usernameOwnerName ?? _usernameOwnerName,
        roll: roll ?? _roll,
        crediteLimit: crediteLimit ?? _crediteLimit,
        creditUsed: creditUsed ?? _creditUsed,
        availableCredit: availableCredit ?? _availableCredit,
        cashBalance: cashBalance ?? _cashBalance,
        outtandingTransaction: outtandingTransaction ?? _outtandingTransaction,
        status: status ?? _status,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get usernameOwnerName => _usernameOwnerName;
  String? get roll => _roll;
  String? get crediteLimit => _crediteLimit;
  String? get creditUsed => _creditUsed;
  String? get availableCredit => _availableCredit;
  String? get cashBalance => _cashBalance;
  String? get outtandingTransaction => _outtandingTransaction;
  String? get status => _status;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['username_owner_name'] = _usernameOwnerName;
    map['roll'] = _roll;
    map['credite_limit'] = _crediteLimit;
    map['credit_used'] = _creditUsed;
    map['available_credit'] = _availableCredit;
    map['cash_balance'] = _cashBalance;
    map['outtanding_transaction'] = _outtandingTransaction;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
