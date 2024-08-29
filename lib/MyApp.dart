import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:hos/Presentations/OnBording/onbording1.dart';
import 'package:hos/Presentations/OnBording/onbording2.dart';
import 'package:hos/Presentations/OnBording/onbording3.dart';
import 'package:hos/Presentations/Pages/Catageores.dart';
import 'package:hos/Presentations/Pages/Foods.dart';
import 'package:hos/Presentations/Rigestars/Forget_Password.dart';
import 'package:hos/Presentations/Rigestars/Login.dart';
import 'package:hos/Presentations/Rigestars/Sign_Up.dart';
import 'package:hos/Presentations/Rigestars/Welcome.dart';
// import 'package:hos/Presentations/Rigestars/core/Api/Api_consumer.dart';
import 'package:hos/Presentations/Rigestars/core/Api/Dio_consumer.dart';
// import 'package:hos/Presentations/Rigestars/core/Api/Dio_consumer.dart';
import 'package:hos/Presentations/Rigestars/cubit/user_cubit.dart';
// import 'package:hos/Presentations/Splash_Screen/Splash_Screen.dart';
import 'package:hos/Presentations/Splash_Screen/Splash2.dart';
import 'package:hos/Presentations/Start_Screen/Start_Screen.dart';


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(DioConsumer(dio: Dio())),
      child: GetMaterialApp(
        routes: {
          "Home": (context) => const StartScreen(),
          '/splash2': (context) => const Splash2(),
          '/onbording1': (context) => const Onbording1(),
          '/onbording2': (context) => const Onbording2(),
          '/onbording3': (context) => const Onbording3(),
          "Welcome": (context) => const Welcome(),
          "login": (context) =>  Login(),
          "/sign_up": (context) => const SignUp(),
          "/ForgetPassword": (context) => const ForgetPassword(),
          '/start_screen': (context) => const StartScreen(),
          'Categories': (context) => const Catageores(),
          'Foods': (context) => const Foods(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "myFonts",
        ),
        home:  Catageores(),
      ),
    );
  }
}
