import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_assem/more/RoomPIC.dart';

import '../models/room.dart';
import '../more/data.dart';

class RoomScreen extends StatelessWidget {
  final Room room2;


  const RoomScreen({Key? key, required this.room2}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:  AppBar(
backgroundColor: Colors.grey,

      elevation: 0,
      leadingWidth: 100,
      leading: TextButton.icon(
          onPressed: ()=>Navigator.of(context).pop(),
          icon:const Icon(CupertinoIcons.chevron_down,color: Colors.black,),
          label: const Text('back',style: TextStyle(color: Colors.black),)),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.doc,
                color: Colors.black)),
        CircleAvatar(
          backgroundImage: NetworkImage(currentUser.imageURL),
        )
      ],
    ),
      body: Container(
        padding:const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child:CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){}, child: Text(room2.club)),

                        const Icon(CupertinoIcons.add)
                      ],
                    ),
                    Text(room2.name),

                  ],
                ),
              ),
              SliverGrid.count(crossAxisCount: 3,mainAxisSpacing: 15,
              children: room2.speakers.map((e) =>RoomPic(imageurl: e.imageURL,name:e.firstName,)).toList()
                ),
              SliverToBoxAdapter(
                child:Text('followed by user',style: Theme.of(context).textTheme.overline,),
              ),
              SliverGrid.count(crossAxisCount: 3,mainAxisSpacing: 12,
              children: room2.others.map((e) =>RoomPic(imageurl: e.imageURL,name: e.firstName,)).toList(),),
              const SliverPadding(padding: EdgeInsets.only(bottom: 50))


            ],

          )

        ),
      bottomSheet: Container(
        height: 90,

        child: Row(

          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                '✌ Leave quietly',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.red),
              ),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                backgroundColor: Colors.white70,

              ),
            ),
            const SizedBox(width: 180,),
            Row(
              children: [
                GestureDetector(onTap: (){},child: Icon(CupertinoIcons.add,size: 30,color: Colors.grey.shade800,)),
                 const SizedBox(width: 4,),
                GestureDetector(onTap: (){},child: Icon(CupertinoIcons.hand_raised,size: 30,color: Colors.brown.shade600,))
              ],
            )

          ],
        )
      ),
      
    );
  }
}
