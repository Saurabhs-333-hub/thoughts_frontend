import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thoughts/screens/components/feedcard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x121212),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => FeedCard(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      backgroundColor: Colors.black,
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Ok"))
                      ],
                      title: Text("Post creation is in under process!",
                          style: GoogleFonts.adamina(
                              color: Colors.white, fontSize: 24)),
                      content: Text("Try sometime later!",
                          style: GoogleFonts.adamina(color: Colors.grey)),
                    ));
          },
          child: Icon(Icons.add_rounded)),
    );
  }
}
