import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:ruslan_badaev_site/controllers/album_controller.dart';
import 'package:ruslan_badaev_site/controllers/test_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:hovering/hovering.dart";
import 'package:ruslan_badaev_site/models/screenshot_album.dart';

class Home extends StatelessWidget {
  final testController = Get.put(TestController());
  final albumController = Get.put(AlbumController());

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
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Wrap(
                            /*          crossAxisAlignment: CrossAxisAlignment.start, */
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                margin: EdgeInsets.all(12),
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Image.network(
                                      'https://sun9-63.userapi.com/impg/cAqsoF5j2iDOsdMdFyzUFd34R9BROabqFPvwgg/2HOSWbHZS_w.jpg?size=1080x1080&quality=96&sign=d27a9a7beb635a954e8f6969a50e8d4c&type=album',
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                    ),
                                    Text(
                                      'Ruslan Badaev',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Flutter developer',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                width: MediaQuery.of(context).size.width * .6,
                                child: Column(
                                  children: [
                                    Text(
                                      'About me',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Since 2019 I have been working in an IoT company as a software engineer. Initially, my responsibilities included backend development (nodejs, python, rest api, rpa, nginx, linux, etc.)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Also, from the end of 2019, he began migration in the company to the function of a mobile developer. Initially, it was Java, but since 2020 he began to master Flutter.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Flutter helped to implement a number of commercial applications that work with native capabilities (bluetooth, nfc, camera, geolocation), protocols (mqtt, ws), architectures (mvc, mvvm, getx, provider, bloc).Flutter has also proven to be interesting as a web alternative.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'In addition to all of the above, I declares  interest in Open Source and I try to keep my github in good shape.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purple[50],
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 56,
                            ),
                            GetBuilder<AlbumController>(
                              builder: (controller) => InkWell(
                                onTap: () => {
                                  controller.toggleAppInfo(),
                                },
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            color: Colors.black54,
                                          ),
                                          height: 654,
                                          width: 300,
                                          child: Stack(
                                            alignment:
                                                AlignmentDirectional.topCenter,
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
                                                    autoPlayInterval:
                                                        Duration(seconds: 2),
                                                    autoPlayAnimationDuration:
                                                        Duration(
                                                            milliseconds: 800),
                                                    autoPlayCurve:
                                                        Curves.fastOutSlowIn,
                                                    enlargeCenterPage: true,
                                                    //onPageChanged: callbackFunction,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                  ),
                                                  items: controller
                                                      .albums[controller
                                                          .currentAlbumId]
                                                      .screenshots
                                                      .map(
                                                    (i) {
                                                      return Builder(
                                                        builder: (BuildContext
                                                            context) {
                                                          return ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24),
                                                            child: Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24),
                                                                color: Colors
                                                                    .black54,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                '${i}',
                                                                fit:
                                                                    BoxFit.fill,
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
                                        if (controller.showAppInfo)
                                          Container(
                                            // height: MediaQuery.of(context).size.height * 0.3,
                                            height: 654,
                                            width: 300,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              color: Colors.black54,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '${controller.albums[controller.currentAlbumId].name}',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Text(
                                                  '${controller.albums[controller.currentAlbumId].description}',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 21,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Wrap(
                                                  children: [
                                                    for (var tag in controller
                                                        .albums[controller
                                                            .currentAlbumId]
                                                        .tags)
                                                      Card(
                                                        margin:
                                                            EdgeInsets.all(4),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(8),
                                                          child: Text(tag),
                                                        ),
                                                      ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 56,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.white.withOpacity(.6),
                              ),
                              //height: MediaQuery.of(context).size.height,
                              //width: MediaQuery.of(context).size.width * 0.3,

                              child: GetBuilder<AlbumController>(
                                builder: (controller) => Wrap(
                                  children: [
                                    for (var i = 0;
                                        i < controller.albums.length;
                                        i++)
                                      //for (ScreenshotAlbum album in controller.albums)

                                      InkWell(
                                        onTap: () =>
                                            {controller.setCurrentAlbumId(i)},
                                        child: SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          child: Container(
                                            margin: EdgeInsets.all(8),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              child: Stack(
                                                fit: StackFit.expand,
                                                children: [
                                                  Image.network(
                                                      controller.albums[i]
                                                          .screenshots[0],
                                                      fit: BoxFit.cover),
                                                  Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.1,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.1,
                                                    color: Colors.black54,
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      controller.albums[i].name,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                  /*       ),
                                              ), */
                                                ],
                                              ),
                                            ),
                                          ),
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
                  ),
                  Container(
                    color: Colors.blue[50],
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
