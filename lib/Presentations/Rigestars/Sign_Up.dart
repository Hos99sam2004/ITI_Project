import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _homepageState();
}

class _homepageState extends State<SignUp> {
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
                      height: 75,
                    ),
                    Image.asset(
                      "assets/images/Sign_Up.png",
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 70,
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
                      height: 20,
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
                      height: 15,
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
                          "sign up",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    SizedBox(
                      height: 15,
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
