import 'package:meta/meta.dart';
import 'package:smart_parking_solutions_rest/database.dart';

///Common object used by front and back end service
///which represents a user
class User {
  String googleUserID;
  String givenName;
  String familyName;
  String email;
  bool disabled;

  User(
      {@required this.googleUserID,
      @required this.givenName,
      @required this.familyName,
      @required this.email,
      @required this.disabled});
  User.fromMap({@required Map map}) {
    googleUserID =
        map.entries.firstWhere((element) => element.key == 'id').value;

    givenName =
        map.entries.firstWhere((element) => element.key == 'given_name').value;

    familyName =
        map.entries.firstWhere((element) => element.key == 'family_name').value;

    email = map.entries.firstWhere((element) => element.key == 'email').value;

    ///TODO figure out weather user is disabled.
    disabled = false;
  }

  Future<String> getUserID() async {
    final conn = await DataBase.getConnection();
    var results = await conn.query(
        'SELECT userID FROM tbl_user WHERE googleUserID = ?', [googleUserID]);
    await conn.close();
    return results.first[0].toString();
  }
}
