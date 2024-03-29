import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:Flutter_Clone_App/data/data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 360.0,
            child: Stack(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  height: 180.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              'https://images.unsplash.com/photo-1520961810802-7f0a32de665a?q=80&w=1591&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          CachedNetworkImageProvider(currentUser.imageUrl),
                      radius: 70.0,
                    ),
                    SizedBox(height: 20.0),
                    Text(currentUser.name,
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: MediaQuery.of(context).size.width - 80,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Center(
                              child: Text('Add to Story',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0))),
                        ),
                        Container(
                          height: 40.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Icon(Icons.more_horiz),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: Divider(height: 40.0),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.home, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('Lives in Thailand', style: TextStyle(fontSize: 16.0))
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('From Thailand', style: TextStyle(fontSize: 16.0))
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Icon(Icons.more_horiz, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('See your About Info',
                        style: TextStyle(fontSize: 16.0))
                  ],
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                      child: Text('Edit Public Details',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0))),
                ),
              ],
            ),
          ),
          Divider(height: 40.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Friends',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.bold)),
                        SizedBox(height: 6.0),
                        Text('536 friends',
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.grey[800])),
                      ],
                    ),
                    Text('Find Friends',
                        style: TextStyle(fontSize: 16.0, color: Colors.blue)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width / 3 - 20,
                            width: MediaQuery.of(context).size.width / 3 - 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        onlineUsers[10].imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          SizedBox(height: 5.0),
                          Text(onlineUsers[10].name,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width / 3 - 20,
                            width: MediaQuery.of(context).size.width / 3 - 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        onlineUsers[6].imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          SizedBox(height: 5.0),
                          Text(onlineUsers[6].name,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width / 3 - 20,
                            width: MediaQuery.of(context).size.width / 3 - 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        onlineUsers[7].imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          SizedBox(height: 5.0),
                          Text(onlineUsers[7].name,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width / 3 - 20,
                            width: MediaQuery.of(context).size.width / 3 - 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        onlineUsers[5].imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          SizedBox(height: 5.0),
                          Text(onlineUsers[5].name,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width / 3 - 20,
                            width: MediaQuery.of(context).size.width / 3 - 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        onlineUsers[8].imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          SizedBox(height: 5.0),
                          Text(onlineUsers[8].name,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width / 3 - 20,
                            width: MediaQuery.of(context).size.width / 3 - 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        onlineUsers[3].imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          SizedBox(height: 5.0),
                          Text(onlineUsers[3].name,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                      child: Text('See All Friends',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
