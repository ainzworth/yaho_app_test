class User {
  final String name;
  final String email;
  final String phoneNumber;

  User({ this.name = '', this.email = '', this.phoneNumber = ''});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'] ?? '',
        email: json['email'] ?? '' ,
        phoneNumber: json['phoneNumber']?? '');
  }
  // User(this.name, this.email,this.phoneNumber);
  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(

  //   )
  // }
}
