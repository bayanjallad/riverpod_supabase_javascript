import 'package:riverpod_supabase_use_javascript/model/user_model.dart';

import '../core/constants.dart';

abstract class UserService{
  Stream<List<UserModel>> getdata();
}
class UserServiseImp extends UserService{
  @override
  Stream<List<UserModel>> getdata() {
return supabase.from('table_users').stream(primaryKey: ['id']).map((data) {
    return data.map((map) => UserModel.fromJson(map)).toList();
  });
  }
}