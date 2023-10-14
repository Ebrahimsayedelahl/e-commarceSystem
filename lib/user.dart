class User {
  String _id;
  String _name;
  String _mobile;
  String _email;
  String _address;
  String _userName;
  String _password;
  bool _isAdmin;
  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }

  String get id => _id;
  String get name => _name;
  String get mobile => _mobile;
  String get email => _email;
  String get address => _address;

  User({
    required String id,
    required String name,
    required String mobile,
    required String email,
    required String address,
    required String userName,
    required String password,
    required bool isAdmin
  })  : _id = id,
        _name = name,
        _mobile = mobile,
        _email = email,
        _address = address,
        _userName=userName,
        _password= password,
        _isAdmin= isAdmin
  ;

  bool get isAdmin => _isAdmin;

  set isAdmin(bool value) {
    _isAdmin = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }
}
