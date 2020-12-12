class User {
  final String id;
  final String nationality;
  final String address;
  final bool isMale;
  final String fullName;
  final String surName;
  final String email;

  User(
      {this.id,
      this.nationality,
      this.address,
      this.isMale,
      this.fullName,
      this.surName,
      this.email});

  User.fromData(Map<String, dynamic> data)
      : id = data['id'],
        nationality = data['nationality'],
        address = data['address'],
        isMale = data['isMale'],
        fullName = data['fullName'],
        surName = data['surName'],
        email = data['email'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nationality': nationality,
      'address': address,
      'isMale': isMale,
      'fullName': fullName,
      'surName': surName,
      'email': email,
    };
  }
}
