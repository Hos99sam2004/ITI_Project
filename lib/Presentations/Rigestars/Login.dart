import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _homepageState();
}

class _homepageState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
                      height: 100,
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
                    Image.asset(
                      "assets/images/Login.png",
                      width: 200,
                      height: 300,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 296,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66)),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your Email : ",
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900],
                          ),
                          icon: Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 296,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66)),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password : ",
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900],
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            size: 30,
                            color: Colors.blue[900],
                          ),
                          icon: Icon(
                            size: 30,
                            Icons.lock,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple[600],
                          fixedSize: Size(296, 25),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/start_screen');
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
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
                              Navigator.pushNamed(context, '/ForgetPassword');
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
