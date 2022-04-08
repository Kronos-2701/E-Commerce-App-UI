class UserData {
  static String? username;
  static String? password;

  static void saveData(String _username, String _password) {
    username = _username;
    password = _password;
  }

  static dynamic getUserData() {
    return ({
      "username": username,
      "password": password,
    });
  }
}

class Logic {
  static List<Map> data = []; // save chat data temp
}
