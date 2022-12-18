import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_assem/screens/rooms_screen.dart';

import '../models/room.dart';
import 'data.dart';
class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({Key? key, required this.room}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>RoomScreen(room2: room,)) );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                room.club,
                style: Theme.of(context).textTheme.overline!.copyWith(
                      fontSize: 12,
                  fontWeight: FontWeight.w400,

                    ),
              ),
              Text(
                room.name,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 100,
                        child: Stack(

                          children: [
                            CircleAvatar(
                              backgroundImage:
                              NetworkImage(room.speakers[1].imageURL),
                            ),
                            Positioned(
                              top: 24,
                              left: 28,
                              child: CircleAvatar(
                                backgroundImage:
                                NetworkImage( room.speakers[0].imageURL,),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...room.speakers.map((e) => Text(
                              '${e.firstName } ${e.lastName}',style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                        text: ('${room.speakers.length+room.followedBySpeakers.length+room.others.length} '),

                                      ),
                                      const WidgetSpan(child: Icon(CupertinoIcons.person_fill,size: 18,color: Colors.grey,)),
                                      TextSpan(
                                        text: (  '/ ${room.speakers.length} '),

                                      ),
                                      const WidgetSpan(child: Icon(CupertinoIcons.chat_bubble_fill,size: 18,color: Colors.grey,),
                                      )
                                    ]
                                )
                            ),

                          ],
                        ),

                      )),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
