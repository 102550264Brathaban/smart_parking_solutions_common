import 'package:smart_parking_solutions_common/src/user.dart';
import 'package:meta/meta.dart';

///Common object used by front and back end service
///which represents a booking for a parking space
class Booking {
  User owner;
  String bayID; ///The unique ID of the parking bay
  DateTime createdDate;
  DateTime startDate;
  DateTime endDate;

  Booking(
      {@required this.owner,
      @required this.bayID,
      @required this.createdDate,
      @required this.startDate,
      @required this.endDate});
}
