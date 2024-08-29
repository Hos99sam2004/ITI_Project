import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final String text;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomTextfield({
    super.key,
    required this.text,
    this.isPassword,
    required this.controller,
    this.validator,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50.0, left: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontSize: 20,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.purple[100],
            ),
            child: TextFormField(
            
              controller: widget.controller,
              obscureText: widget.isPassword != null ? obscure : false,
              validator: widget.validator,
              decoration: InputDecoration(
                prefixIcon: widget.isPassword != null?Icon(Icons.lock_open ,color: Colors.blue[900],
                          size: 30 ):Icon(Icons.person_3_outlined, color: Colors.blue[900],
                          size: 30 ),
                suffixIcon: widget.isPassword != null
                    ? InkWell(
                        onTap: () {
                          obscure = !obscure;
                          setState(() {});
                        },
                        child: Icon(
                          obscure
                              ? Icons.remove_red_eye
                              : CupertinoIcons.eye_slash,
                          color: Colors.blue[900],
                          size: 30 ,
                        ))
                    : null,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
