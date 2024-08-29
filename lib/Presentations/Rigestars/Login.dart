// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:hos/Presentations/Rigestars/Sign_Up.dart';
// import 'package:hos/Presentations/Rigestars/Login.dart';
// import 'package:hos/Presentations/Rigestars/Login.dart';
import 'package:hos/Presentations/Rigestars/cubit/user_cubit.dart';
import 'package:hos/Presentations/Rigestars/cubit/widgets/Custom.dart';
import 'package:hos/Presentations/Start_Screen/Start_Screen.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserCubit>();

    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: BlocListener<UserCubit, UserState>(
            listener: (context, state) {
              if (state is UserloginSucess) {
                Get.snackbar("Success", "Success",
                    backgroundColor: Colors.green);
                Get.offAll(StartScreen());
              }
              if (state is UserloginError) {
                Get.snackbar(
                  "Error",
                  state.error.toString(),
                  colorText: Colors.white,
                  backgroundColor: Colors.red,
                );
              }
            },
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        "assets/images/main_top.png",
                        height: 200,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/login_bottom.png",
                        width: 200,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SvgPicture.asset(
                            "assets/icons/login.svg",
                            width: 200,
                            height: 300,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CustomTextfield(
                            text: "Email",
                            controller: cubit.loginEmail,
                            validator: (value) {
                              if (!value!.isEmail) {
                                return "Please enter a valid email";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextfield(
                            text: "Password",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter a valid password";
                              }
                              return null;
                            },
                            isPassword: true,
                            controller: cubit.loginpassword,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              cubit.login(
                                  email: cubit.loginEmail.text,
                                  password: cubit.loginpassword.text);
                            },
                            child: BlocBuilder<UserCubit, UserState>(
                              builder: (context, state) {
                                if (state is UserloginLooding) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else {
                                  return Container(
                                    height: 45,
                                    width: 299,
                                    decoration: BoxDecoration(
                                        color: Colors.indigo,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text("Login",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/sign_up');
                                  },
                                  child: Text(
                                    "Sign_up?",
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),

                          ///
                          ///
                          ///

                          Text(
                            "OR",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/ForgetPassword');
                              },
                              child: Text(
                                "Forget_Password?",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
