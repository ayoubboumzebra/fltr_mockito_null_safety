import 'package:fltr_mockito_null_safety/model/user.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserService {
  /// load user data
  ///
  Future<List<User>> loadUserData() async {
    try {
      return await Future.value([
        User(name: "Amin", age: 25),
        User(name: "Ayoub", age: 28),
      ]);
    } catch (e) {
      throw ('Error loadUserData() ');
    }
  }
}
