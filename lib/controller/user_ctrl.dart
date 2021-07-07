import 'package:fltr_mockito_null_safety/model/user.dart';
import 'package:fltr_mockito_null_safety/service/user_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserController {
  UserService userService = UserService();
  UserController(this.userService);

  /// Load a list [User] user from service
  ///
  Future<List<User>> getUsers() async {
    try {
      return await userService.loadUserData();
    } catch (e) {
      throw ('Error getUsers()');
    }
  }
}
