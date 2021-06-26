import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:ruslan_badaev_site/controllers/test_controller.dart';
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
                            borderRadius: BorderRadius.circular(18),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
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
                                          'Ruslan Badaev',
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
                    color: Colors.white,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 180,
                  height: 212,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
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
                          color: Colors.blueAccent.withOpacity(.6),
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(18),
                          child: Text(
                            'About me',
                            style: TextStyle(
                              color: Colors.blueAccent.withOpacity(.6),
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
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(18),
                          child: Text(
                            'Projects',
                            style: TextStyle(
                              color: Colors.blueAccent.withOpacity(.6),
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
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(18),
                          child: Text(
                            'Contact me',
                            style: TextStyle(
                              color: Colors.blueAccent.withOpacity(.6),
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
