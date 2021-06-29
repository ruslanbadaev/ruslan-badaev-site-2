import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:ruslan_badaev_site/controllers/test_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:hovering/hovering.dart";

class Home extends StatelessWidget {
  final testController = Get.put(TestController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.grey[900].withOpacity(.8),
                                      Colors.grey[850].withOpacity(.8),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              height: MediaQuery.of(context).size.height * 0.8,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    color: Colors.black54,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Center(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.red,
                                                size: 14,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.yellow,
                                                size: 14,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 14,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Text(
                                          'About me',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purple[50],
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.black54,
                          ),
                          height: 654,
                          width: 300,
                          child: Stack(
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              Center(
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: 640,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: .98,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 2),
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    //onPageChanged: callbackFunction,
                                    scrollDirection: Axis.horizontal,
                                  ),
                                  items: [
                                    'https://sun9-42.userapi.com/impg/HwFdOxZQHaAP1gCWh_6uc-yWrusoh1P9UDTdTg/32VnHVKAG2M.jpg?size=720x1600&quality=96&sign=924e75f4ccd7c241c7168e73e4980469&type=album',
                                    'https://sun9-20.userapi.com/impg/QUCaz9LWPx-RVJi0zLwwvKQBI1jaQ3vroATrkw/f6C1wTt8LuA.jpg?size=720x1600&quality=96&sign=ce16218f08083846b58dd41fe3807ea0&type=album',
                                    'https://sun9-1.userapi.com/impg/m0eo8Y4aBUYHUGnzfIk3Laj25FHb1X8Y8fgAXw/DXBwPkHvA5E.jpg?size=720x1600&quality=96&sign=79b21e6ce3513caef40b6372afd162a1&type=album',
                                    'https://sun9-71.userapi.com/impg/X7GopUA70afpg5EYqjQApxlEzpULCiR8VuNIGw/sZXRuAfAitY.jpg?size=720x1600&quality=96&sign=02a3f68d09101deadd9e391d81ba6948&type=album',
                                    'https://sun9-13.userapi.com/impg/KmrOUO4AfPfSx1UtMWIDCOYPyGSH6BbiKAPirg/N6UItn_NcY0.jpg?size=720x1600&quality=96&sign=fba40d220db26bec4aa2bb58463d4efa&type=album',
                                  ].map(
                                    (i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              /*       padding: EdgeInsets.symmetric(
                                            horizontal: 5.0), */
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                                color: Colors.black54,
                                              ),
                                              child: Image.network(
                                                '$i',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                child: Icon(
                                  Icons.circle,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue[50],
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 180,
                  height: 212,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.network(
                          'https://sun9-63.userapi.com/impg/cAqsoF5j2iDOsdMdFyzUFd34R9BROabqFPvwgg/2HOSWbHZS_w.jpg?size=1080x1080&quality=96&sign=d27a9a7beb635a954e8f6969a50e8d4c&type=album'),
                      Text(
                        'Ruslan Badaev',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(18),
                          child: Text(
                            'About me',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.6),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(18),
                          child: Text(
                            'Projects',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.6),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(18),
                          child: Text(
                            'Contact me',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.6),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
