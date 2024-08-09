import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});
  @override
  State<Welcome> createState() => _homepageState();
}

class _homepageState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
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
              child: Image.asset(
                "assets/images/main_bottom.png",
                height: 180,
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
                    "Welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    "assets/images/Begin.png",
                    height: 300,
                    width: 400,
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[600],
                        fixedSize: Size(296, 25),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(296, 25),
                        backgroundColor: Colors.purple[100],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
