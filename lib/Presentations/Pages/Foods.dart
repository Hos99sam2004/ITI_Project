import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hos/Presentations/Pages/Catageores.dart';
// import 'package:hos/Presentations/Pages/T_Shirt.dart';
import 'package:hos/Presentations/Start_Screen/Lists.dart';
import 'package:hos/Presentations/Start_Screen/Start_Screen.dart';

class Foods extends StatefulWidget {
  const Foods({super.key});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      bottomNavigationBar: Nav(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: eatList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[200]),
                child: Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      height: 130,
                      eatList[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("\$\$ 10"),
                  Text("Fruits"),
                  Divider(
                    thickness: 3,
                    color: Colors.lightBlueAccent[700],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            isFavorite = !isFavorite;

                            FilledButton.styleFrom(
                                backgroundColor: Colors.green.shade100);

                            Get.snackbar("Favourites", "Added To Favourites",
                                backgroundColor: Colors.green.shade300,
                                snackPosition: SnackPosition.TOP);
                            setState(() {});
                          },
                          child: isFavorite == true
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(Icons.favorite_border)),
                      Spacer(),
                    ],
                  ),
                ]),
              );
            }),
      ),
    );
  }
}

CurvedNavigationBar Nav() {
  return CurvedNavigationBar(
    color: Colors.green.shade100,
    items: <Widget>[
      Icon(
        Icons.food_bank,
        size: 30,
        color: Colors.pink,
      ),
      Icon(
        Icons.category,
        size: 30,
        color: Colors.pink,
      ),
      const Icon(
        Icons.home,
        size: 30,
        color: Colors.pink,
      ),
    ],
    onTap: (index) {
      if (index == 0) {
        new Future.delayed(Duration(milliseconds: 20), () {
          Get.to(Foods());
        });
      } else if (index == 1) {
        new Future.delayed(Duration(milliseconds: 20), () {
          Get.to(Catageores());
        });
      } else {
        new Future.delayed(Duration(milliseconds: 20), () {
          Get.to(StartScreen());
        });
      }
    },
  );
}
