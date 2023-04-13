import 'package:uuid/uuid.dart';

class UniqueID {
  final String _uID = const Uuid().v4().split('-').join();

  String getUniqueID() {
    return _uID;
  }
}
