import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hos/Presentations/OnBording/onbording1.dart';
import 'package:hos/Presentations/OnBording/onbording2.dart';
import 'package:hos/Presentations/OnBording/onbording3.dart';
import 'package:hos/Presentations/Rigestars/Forget_Password.dart';
import 'package:hos/Presentations/Rigestars/Login.dart';
import 'package:hos/Presentations/Rigestars/Sign_Up.dart';
import 'package:hos/Presentations/Rigestars/Welcome.dart';
import 'package:hos/Presentations/Splash_Screen/Splash_Screen.dart';
import 'package:hos/Presentations/Splash_Screen/Splash2.dart';
import 'package:hos/Presentations/Start_Screen/Start_Screen.dart';
// import 'package:hos/Presentations/Start_Screen/cubit/cubit/home_cubit.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash2': (context) => const Splash2(),
        '/start_screen': (context) => const StartScreen(),
        '/onbording1': (context) => const Onbording1(),
        '/onbording2': (context) => const Onbording2(),
        '/onbording3': (context) => const Onbording3(),
        "Home": (context) => const SplashScreen(),
        "Welcome": (context) => const Welcome(),
        "/sign_up": (context) => const SignUp(),
        "/login": (context) => const Login(),
        "/ForgetPassword": (context) => const ForgetPassword(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        fontFamily: 'lib/fonts/Roboto/Roboto-Regular.ttf',
      ),
      home: Welcome(),
    );
  }
}
