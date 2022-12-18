import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/room.dart';
import 'data.dart';
class RoomPic extends StatelessWidget {
  final String imageurl;
  final String name;

  const RoomPic({Key? key, required this.imageurl, required this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundImage: NetworkImage(imageurl),),
                if(true)

                  Positioned(
                      bottom: 0,
                      left: 5,
                      child: Container(
                          decoration:const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(2,0)
                                )
                              ]
                          )
                          ,child: Text('🎉'))
                  ),
                if(true)
                  Positioned(
                    bottom: 0,
                    right: 0,

                    child: Container(
                      decoration:const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(0,0)
                            )
                          ]
                      )
                      ,child: Icon(CupertinoIcons.mic_slash_fill),
                    ),

                  )],

            ),
            Flexible(
                child: Text(
                  (name),
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        )
    );
  }
}
