import 'package:calcon/shared/bloc_observer.dart';
import 'package:calcon/shared/components/indicator.dart';
import 'package:calcon/shared/network/local/cache_helper.dart';
import 'package:calcon/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/calcon_app/login/login_screen.dart';
import 'modules/calcon_app/search/search.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
        () {
      // Use blocs...
    },
    blocObserver: MyBlocObserver(),
  );
  DioHelper.init();
  await CacheHelper.init();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        fontFamily: 'ReadexPro',
      ),
      
    );
  }




}











