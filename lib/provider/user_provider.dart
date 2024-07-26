import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_supabase_use_javascript/model/user_model.dart';
import 'package:riverpod_supabase_use_javascript/service/user_servise.dart';

import '../core/constants.dart';

final Providered = StreamProvider<List<UserModel>>((ref) {
  return UserServiseImp().getdata();
});
