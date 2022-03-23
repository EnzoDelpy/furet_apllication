import 'package:mysql1/mysql1.dart';

class BDD {
  ConnectionSettings settings = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'FuretUser',
    password: 'btsinfo',
    db: 'FuretDB',
  );

  BDD();

  Future<MySqlConnection> connexion() async {
    return await MySqlConnection.connect(settings);
  }

  Future<bool> testConnexion() async {
    bool test = false;
    try {
      MySqlConnection conn = await connexion();
      conn.close();
      test = true;
    } catch (e) {}
    return test;
  }
}
