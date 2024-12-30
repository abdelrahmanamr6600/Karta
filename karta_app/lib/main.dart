import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/widget/Widgets.dart';
import 'package:karta_app/features/login/presentaion/ui/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:karta_app/features/register/presentaion/ui/RegisterScreen.dart';
import 'package:karta_app/firebase_options.dart';

import 'core/utils/BlocObserver.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: mainColor,
      statusBarIconBrightness:
          Brightness.light, // Light icons for dark background
      statusBarBrightness:
          Brightness.dark, // For iOS (opposite of icon brightness)
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 600),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        builder: (context, child) {
          return Scaffold(
            appBar: CustomAppBar(
              height: 50.0.h,
              color: mainColor,
            ),
            body: child,
          );
        },
        home: const LoginScreen(),
      ),
    );
  }
}
