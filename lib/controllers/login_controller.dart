class LoginController {
  static String _username = '';
  static String _password = '';

  static String get username => _username;

  static set username(String value) {
    _username = value;
  }

  static String get password => _password;

  static set password(String value) {
    _password = value;
  }

  static bool validateCredentials() {
    // Perform validation logic here
    // For example, you can check if the username and password are not empty
    // You can also perform backend validation if needed

    if (_username.isNotEmpty && _password.isNotEmpty) {
      // For demonstration purposes, let's consider 'admin' as the valid username
      // and 'password' as the valid password
      if (_username == 'admin' && _password == 'password') {
        return true;
      }
    }
    return false;
  }
}
