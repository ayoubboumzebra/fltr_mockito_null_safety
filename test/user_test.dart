import 'package:fltr_mockito_null_safety/controller/user_ctrl.dart';
import 'package:fltr_mockito_null_safety/model/user.dart';
import 'package:fltr_mockito_null_safety/service/user_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'user_test.mocks.dart';

@GenerateMocks([UserService])
void main() {
  group('User ', () {
    final userServiceMock = MockUserService();
    test('get user list lenght', () async {
      final userController = UserController(userServiceMock);

      when(userServiceMock.loadUserData())
          .thenAnswer((_) => Future.value([User(name: 'user 1', age: 12)]));
      var userCount =
          await userController.getUsers().then((value) => value.length);
      verify(userServiceMock.loadUserData());
      expect(userCount, 1);
    });
  });
}
