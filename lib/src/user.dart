import 'package:meta/meta.dart';

///Common object used by front and back end service
///which represents a user
class User {
  String profileID;
  String giveName;
  String familyName;
  String email;
  bool disabled;

  User(
      {@required this.profileID,
      @required this.giveName,
      @required this.familyName,
      @required this.email,
      @required this.disabled});
}
