import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hos/Presentations/Pages/Catageores.dart';
import 'package:hos/Presentations/Pages/Foods.dart';
import 'package:hos/Presentations/Start_Screen/Lists.dart';
import 'package:carousel_slider/carousel_slider.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      drawer: Drawer(
        backgroundColor: Colors.green.shade300,
        shadowColor: Colors.green,
        child: ListView(
          children: [
            for (int i = 0; i < list.length; i++)
              Drawer_list_Tile(list[i], icons[i]),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 10,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  0,
                  1,
                  2,
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 213, 246, 214)
                                .withOpacity(.2)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            Bannerimages[i],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              MiddleBody("Exclusive Offers", brandList),
              MiddleBody("Best Selling", eatList),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Nav(),
    );
  }

  CurvedNavigationBar Nav() {
    return CurvedNavigationBar(
      color: Colors.green.shade100,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.pink,
        ),
        Icon(
          Icons.category,
          size: 30,
          color: Colors.pink,
        ),
        Icon(
          Icons.food_bank,
          size: 30,
          color: Colors.pink,
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          new Future.delayed(Duration(milliseconds: 40), () {
            Get.to(StartScreen());
          });
        } else if (index == 1) {
          new Future.delayed(Duration(milliseconds: 50), () {
            Get.to(Catageores());
          });
        } else {
          new Future.delayed(Duration(milliseconds: 40), () {
            Get.to(Foods());
          });
        }
      },
    );
  }

  Widget MiddleBody(String title, listdata) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
                itemCount: listdata.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 250,
                    width: 200,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green.withOpacity(.2)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                listdata[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(listdata[index].name),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 30.0, left: 20.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(brandList[index].price.toString()),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Colors.green.shade500,
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(Icons.add)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  ListTile Drawer_list_Tile(list, icons) {
    return ListTile(
      leading: (icons),
      iconColor: Colors.white,
      title: Text(
        list,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        Navigator.pushNamed(context, list);
      },
    );
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
}
