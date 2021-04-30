import 'package:meta/meta.dart';

///Common object used by front and back end service
///which represents a user
class User {
  String userID;
  String givenName;
  String familyName;
  String email;
  bool disabled;

  User(
      {@required this.userID,
      @required this.givenName,
      @required this.familyName,
      @required this.email,
      @required this.disabled});
}
