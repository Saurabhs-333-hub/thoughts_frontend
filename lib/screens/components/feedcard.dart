// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedCard extends StatefulWidget {
  const FeedCard({super.key});

  @override
  State<FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  String uri = 'lib/images/christmas.webp';
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            color: Color.fromARGB(28, 255, 255, 255),
            child: Column(children: [
              Stack(children: [
                GestureDetector(
                  onTap: () => showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Color.fromARGB(255, 18, 18, 18),
                    context: context,
                    builder: (context) => Container(
                      child: Column(
                        children: [
                          SizedBox(height: 100),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(uri),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'lib/images/ambassador.jpg'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('John Doe',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('2 hours ago',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(uri)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      // width: 200,

                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        GestureDetector(
                          onTap: () => showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    backgroundColor: Colors.black,
                                    actions: [
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: Text("Ok"))
                                    ],
                                    title: Text(
                                        "Profile development is under process!",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 24)),
                                    content: Text("Try sometime later!",
                                        style: TextStyle(color: Colors.grey)),
                                  )),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('lib/images/ambassador.jpg'),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(112, 0, 0, 0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('John Doe',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('2 hours ago',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.black,
                                      actions: [
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Text("Ok"))
                                      ],
                                      title: Text("Service Not Available!",
                                          style: GoogleFonts.adamina(
                                              color: Colors.white,
                                              fontSize: 24)),
                                      content: Text("Try sometime later!",
                                          style: GoogleFonts.adamina(
                                              color: Colors.grey)),
                                    ));
                          },
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ])),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/images/ambassador.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Increadible!",
                            style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("#mycreation",
                            style: TextStyle(color: Colors.blue)),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: const Color.fromARGB(127, 255, 255, 255),
                thickness: 1,
                height: 20,
                indent: 32,
                endIndent: 32,
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ))
                  ],
                ),
              )
            ])));
  }
}
