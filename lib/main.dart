import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_supabase_use_javascript/core/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'view/Firstpage.dart';
import 'view/newfirstPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: User_url, anonKey: User_anonKey);
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Newfirstpage(),
    );
  }
}
