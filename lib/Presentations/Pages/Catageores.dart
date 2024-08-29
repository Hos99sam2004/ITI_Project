// ignore: file_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hos/Presentations/Pages/Foods.dart';
import 'package:hos/Presentations/Start_Screen/Lists.dart';
import 'package:hos/Presentations/Start_Screen/Start_Screen.dart';

class Catageores extends StatefulWidget {
  const Catageores({super.key});

  @override
  State<Catageores> createState() => _CatageoresState();
}

class _CatageoresState extends State<Catageores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: appbar(),
      body: BodyPage(),
    );
  }

  Container BodyPage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 653,
            width: double.infinity,
            child: GridView.builder(
              itemCount: 7,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                mainAxisExtent: 170,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, list[index]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[200],
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              height: 120,
                              width: 120,
                              catList[index],
                              // color: Colors.white,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(list[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

AppBar appbar() {
  return AppBar(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.green,
    leading: IconButton(
      onPressed: () {
        Get.to(StartScreen());
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
        size: 30,
      ),
    ),
    title: const Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Menofia, Egypt",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

CurvedNavigationBar Nav() {
  return CurvedNavigationBar(
    color: Colors.green.shade100,
    items: <Widget>[
      Icon(Icons.category, size: 30,
          color: Colors.pink,),
      Icon(Icons.food_bank, size: 30,
          color: Colors.pink,),
      const Icon(Icons.home, size: 30,
          color: Colors.pink,),
    ],
    onTap: (index) {
      if (index == 0) {
        new Future.delayed(Duration(milliseconds: 20), () {
          Get.to(Catageores());
        });
      } else if (index == 1) {
        new Future.delayed(Duration(milliseconds: 20), () {
          Get.to(Foods());
        });
      } else {
        new Future.delayed(Duration(milliseconds: 20), () {
          Get.to(StartScreen());
        });
      }
    },
  );
}
