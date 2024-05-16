import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../add_ons/horizontaltrendview.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    int currentPageIndex = 0;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff8f3ed),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height/2,
              decoration: BoxDecoration(
                color: const Color(0xfff8f3ed),
                borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: EdgeInsets.all(width/20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi, Tom Hanks", style: TextStyle(fontSize: 30),),
                            Text("Free User", style: TextStyle(fontSize: 20, color: Color(0xFFC3BEBC)),),
                          ],
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                          child: Image.network('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          fit: BoxFit.cover,
                          width: 60,
                          height: 60,)
                        )
                      ],
                    ),
                    Container(
                      height: 60,
                      width: width/0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: width/1.5,
                              child: const TextField(
                                autofocus: false,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: 'Title, Author or Topics',
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text("New & Trending", style: GoogleFonts.gideonRoman(textStyle: TextStyle( fontSize: 30, fontWeight: FontWeight.bold),)),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          htrendView('https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg', width),
                          htrendView('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8HX6KThQo6ZsyTxuoFJ92-OREN5nmeIDY23Jw8xZ7g&s', width),
                          htrendView('https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg', width),
                          htrendView('https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg', width),
                          htrendView('https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg', width),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("AudioBooks", style: TextStyle(fontSize: 25),),
                    ),
                    audiobookView('https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg', 'witness all'),
                    audiobookView('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8HX6KThQo6ZsyTxuoFJ92-OREN5nmeIDY23Jw8xZ7g&s', 'somewhere in the universe'),
                    audiobookView('https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg', 'time is beauty'),
                    audiobookView('https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg', 'an audio book'),
                    audiobookView('https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg', 'work it all'),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: const SizedBox(
          height: 100,
          child: GNav(
            color: Colors.white60,
            activeColor: Colors.white,
            backgroundColor: Color(0xffdaaa63),
              tabs: [
                GButton(icon: Icons.local_library_sharp, text: "Library",),
                GButton(icon: Icons.bookmark_border_outlined, text: "Bookmark",),
                GButton(icon: Icons.headphones, text: "Audio Book",),
                GButton(icon: Icons.shopping_bag, text: "Store",),
              ]),
        )
        ),
    );
  }
}
