import 'package:e_commerce_app/feature/bottom_navigation/cubit.dart';
import 'package:e_commerce_app/feature/splash/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cort/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider
      (providers: [
        BlocProvider(create: (context)=>BottomNavigationCubit())
    ],
        child: MaterialApp(

            theme: ThemeData(),
            home:SplashView()
        )
      );
  }
}


