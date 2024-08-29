import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:hos/Presentations/Rigestars/Welcome.dart';
import 'package:hos/Presentations/Rigestars/cubit/user_cubit.dart';
import 'package:hos/Presentations/Rigestars/cubit/widgets/Custom.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _homepageState();
}

class _homepageState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserCubit>();
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: BlocListener<UserCubit, UserState>(
            listener: (context, state) {
              if (state is UserSignSucess) {
                Get.snackbar("Success", "Success",
                    backgroundColor: Colors.green);
                Get.offAll(Welcome());
              }
              if (state is UserSignError) {
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
                        "assets/images/signup_top.png",
                        height: 150,
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
                            height: 50,
                          ),
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SvgPicture.asset(
                            "assets/icons/signup.svg",
                            height: 300,
                            width: 300,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextfield(
                              text: " Name ", controller: cubit.SignUPname),
                          CustomTextfield(
                              text: " Phone ", controller: cubit.SignUPPhone),
                          CustomTextfield(
                            text: "Email",
                            controller: cubit.SignUPEmail,
                            validator: (value) {
                              if (!value!.isEmail) {
                                return "Please enter a valid email";
                              }
                              return null;
                            },
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
                            controller: cubit.SignUPpassword,
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          InkWell(
                            onTap: () {
                              cubit.Sign_Up(
                                email: cubit.SignUPEmail.text,
                                password: cubit.SignUPpassword.text,
                                phone: cubit.SignUPPhone.text,
                                name: cubit.SignUPname.text,
                              );
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
                                        color: Colors.purple[600],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(" Sign Up ",
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Images("assets/icons/facebook.svg"),
                              Images("assets/icons/twitter.svg"),
                              Images("assets/icons/google-plus.svg"),
                            ],
                          ),
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

  Container Images(String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: Colors.purple[100],
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          image,
          width: 50,
          fit: BoxFit.cover,
          color: Colors.blue[900],
        ),
      ),
    );
  }
}
