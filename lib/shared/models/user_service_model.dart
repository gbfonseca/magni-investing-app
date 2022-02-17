import 'user_model.dart';

abstract class UpdateUserData {
  late String name;
  late String lastName;
  late String? email;
}

abstract class IUserService {
  Future<UserModel> updateUser(UpdateUserData data);
}
