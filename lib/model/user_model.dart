class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? userName;
  String? password;
  String? confirmPassword;
  String? phone;

  UserModel(
      {this.uid,
      this.email,
      this.firstName,
      this.secondName,
      this.userName,
      this.password,
      this.confirmPassword,
      this.phone});

  // data sa servera

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['iud'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
      userName: map['username'],
      password: map['password'],
      confirmPassword: map['confirmPassword'],
      phone: map['phone'],
    );
  }

  //slanje podataka na server

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'username': userName,
      'password': password,
      'confirmPassword': confirmPassword,
      'phone': phone,
    };
  }
}
