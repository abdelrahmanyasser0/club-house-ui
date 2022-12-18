
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_assem/more/room_card.dart';
import '../more/data.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text(
          'clubhouse',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.envelope_open,
                  color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.bell, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.arrow_up_right_square_fill,
                  color: Colors.black)),
          CircleAvatar(
            backgroundImage: NetworkImage(currentUser.imageURL),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [...roomList.map((e) => RoomCard(room: e))],
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white70.withOpacity(0.1),
                    Colors.white70,
                  ])),
            ),
          ),
          Positioned(
            left: 110,
            right: 110,
            bottom: 50,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(13),
                    primary: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                icon: const Icon(CupertinoIcons.add),
                label: const Text('start a room')),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
              ),
              label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar), label: 'calendar'),
        ],
      ),
    );
  }
}