import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xff263238),
        backgroundColor: Color(0xff263238),
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 35,
                color: Colors.white,
              ),
            ),
            Positioned(
                top: 50,
                left: 100,
                child: const Text(
                  " Forget Password ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
            Column(
              children: [
                SizedBox(
                  height: 300,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      text("Reset Your Password", 30, Colors.white),
                      text(
                        "  Enter your Phone Number and we will send you a Code to reset your password.",
                        20,
                        Colors.limeAccent.shade100,
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            autofocus: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade400,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                prefixIcon: Icon(Icons.phone),
                                prefixIconColor: Colors.black,
                                suffixIcon: Icon(Icons.remove_red_eye),
                                suffixIconColor: Colors.black,
                                hintText: "  Phone Number",
                                hintStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ))),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: MaterialButton(
                          color: Colors.limeAccent,
                          height: 65,
                          minWidth: 400,
                          animationDuration: Duration(seconds: 5),
                          splashColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            "Send Code",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }

  Padding text(String text, int size, Color color) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: size.toDouble(),
          fontWeight: FontWeight.bold,
          color: color,
          // color: Colors.white,
        ),
      ),
    );
  }
}
