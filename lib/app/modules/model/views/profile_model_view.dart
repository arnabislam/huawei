class Profile {
  int? id, hsc_exam_year;
  ProfileUser? user;
  String? full_name,
      email,
      slug,
      institute,
      profile_image,
      referral_code,
      package,
      registered_datetime,
      updated_datetime;

  Profile();
  Profile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        user = ProfileUser.fromJson(json['user']),
        full_name = json['full_name'],
        email = json['email'],
        slug = json['slug'],
        profile_image = json['profile_image'],
        referral_code = json['referral_code'],
        package = json['package'].toString(),
        institute = json['institute'],
        hsc_exam_year = json['hsc_exam_year'],
        registered_datetime = json['registered_datetime'],
        updated_datetime = json['updated_datetime'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'user': user,
    'full_name': full_name,
    'email': email,
    'slug': slug,
    'profile_image': profile_image,
    'referral_code': referral_code,
    'package': package,
    'institute': institute,
    'hsc_exam_year': hsc_exam_year,
    'registered_datetime': registered_datetime,
    'updated_datetime': updated_datetime,
  };
}

class ProfileUser {
  int? uid;
  String? phone;

  ProfileUser();
  ProfileUser.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        phone = json['phone'];

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'phone': phone,
  };
}
