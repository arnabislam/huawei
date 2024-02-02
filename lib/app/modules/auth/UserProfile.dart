import 'dart:convert';

/// user : {"id":1,"username":"admin","email":"admin@gmail.com","username_owner_name":"Agent","roll":"admin","credite_limit":"119918","credit_used":"433","available_credit":"119918","cash_balance":"520","outtanding_transaction":"320","user_comition":"2.40","company_comition":"9.60","status":"Admin","created_at":"2024-02-01T18:38:55+08:00","updated_at":"2024-02-02T11:54:49.000000Z"}
/// token : "49|jbHT6olpyD1Cmf78ttajzj7XhklTzgCfjWHdXMjj0230767a"

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
/// username_owner_name : "Agent"
/// roll : "admin"
/// credite_limit : "119918"
/// credit_used : "433"
/// available_credit : "119918"
/// cash_balance : "520"
/// outtanding_transaction : "320"
/// user_comition : "2.40"
/// company_comition : "9.60"
/// status : "Admin"
/// created_at : "2024-02-01T18:38:55+08:00"
/// updated_at : "2024-02-02T11:54:49.000000Z"

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
    String? userComition,
    String? companyComition,
    String? status,
    String? createdAt,
    String? updatedAt,
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
    _userComition = userComition;
    _companyComition = companyComition;
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
    _userComition = json['user_comition'];
    _companyComition = json['company_comition'];
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
  String? _userComition;
  String? _companyComition;
  String? _status;
  String? _createdAt;
  String? _updatedAt;
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
    String? userComition,
    String? companyComition,
    String? status,
    String? createdAt,
    String? updatedAt,
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
        userComition: userComition ?? _userComition,
        companyComition: companyComition ?? _companyComition,
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
  String? get userComition => _userComition;
  String? get companyComition => _companyComition;
  String? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

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
    map['user_comition'] = _userComition;
    map['company_comition'] = _companyComition;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
