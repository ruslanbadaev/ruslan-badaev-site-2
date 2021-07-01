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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  ],
                                ),
                              ),
                              /* Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                              ), */
                            ],
                          ),
                          Column(
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.8,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
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
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purple[50],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          //height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width * 0.3,

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
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.network(
                                                  controller
                                                      .albums[i].screenshots[0],
                                                  fit: BoxFit.cover),
                                              ClipRRect(
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 2, sigmaY: 2),
                                                  child: Container(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      controller.albums[i].name,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        backgroundColor:
                                                            Colors.black54,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                /*         Container(
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(8),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          child: Image.network(
                                            album.screenshots[0],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), */
                              ],
                            ),
                          ),
                        ),
                        GetBuilder<AlbumController>(
                          builder: (controller) => InkWell(
                            onTap: () => {},
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
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
                                                    Duration(milliseconds: 800),
                                                autoPlayCurve:
                                                    Curves.fastOutSlowIn,
                                                enlargeCenterPage: true,
                                                //onPageChanged: callbackFunction,
                                                scrollDirection:
                                                    Axis.horizontal,
                                              ),
                                              items: controller
                                                  .albums[
                                                      controller.currentAlbumId]
                                                  .screenshots
                                                  .map(
                                                (i) {
                                                  return Builder(
                                                    builder:
                                                        (BuildContext context) {
                                                      return ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24),
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                          child: Image.network(
                                                            '${i}',
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
                                    Container(
                                      // height: MediaQuery.of(context).size.height * 0.3,
                                      height: 654,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
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
                                                  .albums[
                                                      controller.currentAlbumId]
                                                  .tags)
                                                Card(
                                                  margin: EdgeInsets.all(4),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(8),
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
                            /*  GetBuilder<AlbumController>(
                          builder: (controller) => Container(
                            // height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.black54,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${controller.albums[controller.currentAlbumId].name}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  '${controller.albums[controller.currentAlbumId].description}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    for (var tag in controller
                                        .albums[controller.currentAlbumId].tags)
                                      Card(
                                        margin: EdgeInsets.all(4),
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(tag),
                                        ),
                                      ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ), */
                          ),
                        ),
                      ],
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
            /* Row(
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
            ), */
          ],
        ),
      ),
    );
  }
}
