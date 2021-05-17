import 'package:meta/meta.dart';

import '../smart_parking_solutions_common.dart';

//class Access token
class AccessToken {
  User owner;
  String value;
  DateTime createdDate;

  AccessToken(
      {@required this.owner, @required this.value, @required this.createdDate});
}
