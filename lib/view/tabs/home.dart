import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/components/bottom_nav.dart';
import 'package:slinkshot_app/components/post_card.dart';
import 'package:slinkshot_app/enum.dart';
import 'package:slinkshot_app/models/posts.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CBLACK,
        body: Padding(
          padding: const EdgeInsets.only(
            left: 32,
            right: 32,
            top: 73,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/skin2.png",
                    height: 61,
                    width: 61,
                  ),
                  SizedBox(width: getScreenWidth(11)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Morning",
                        style: GoogleFonts.roboto(
                          color: CWHITE.withOpacity(0.79),
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: getScreenHeight(7)),
                      Text(
                        "Genesdemon",
                        style: GoogleFonts.roboto(
                          color: CWHITE,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: getScreenHeight(50),
                    width: getScreenWidth(50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: CASH.withOpacity(0.15)),
                    child: Icon(
                      Icons.notifications,
                      color: CWHITE,
                      size: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getScreenHeight(30),
              ),
              DefaultTabController(
                length: 5,
                child: Flexible(
                  child: Column(
                    children: [
                      TabBar(
                          unselectedLabelColor: CWHITE.withOpacity(0.7),
                          labelColor: CWHITE,
                          isScrollable: true,
                          indicatorColor: CPEACH,
                          tabs: [
                            Tab(child: Text("All videos")),
                            Tab(child: Text("GTA V")),
                            Tab(child: Text("COD Mobile")),
                            Tab(child: Text("Apex Legends")),
                            Tab(child: Text("Red Dead II")),
                          ]),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 30),
                          child: TabBarView(
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(height: getScreenHeight(30)),
                                    ...List.generate(
                                      posts.length,
                                      (index) {
                                        return PostCard(post: posts[index]);
                                        return SizedBox
                                            .shrink(); // here by default width and height is 0
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(height: getScreenHeight(30)),
                                    ...List.generate(
                                      posts.length,
                                      (index) {
                                        if (posts[index].game_name == 'GTA V')
                                          return PostCard(post: posts[index]);
                                        return SizedBox
                                            .shrink(); // here by default width and height is 0
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(height: getScreenHeight(30)),
                                    ...List.generate(
                                      posts.length,
                                      (index) {
                                        if (posts[index].game_name ==
                                            'COD Mobile')
                                          return PostCard(post: posts[index]);
                                        return SizedBox
                                            .shrink(); // here by default width and height is 0
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(height: getScreenHeight(30)),
                                    ...List.generate(
                                      posts.length,
                                      (index) {
                                        if (posts[index].game_name == 'Apex')
                                          return PostCard(post: posts[index]);
                                        return SizedBox
                                            .shrink(); // here by default width and height is 0
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.emoji_emotions,
                                    color: CWHITE,
                                    size: 100,
                                  ),
                                  SizedBox(height: getScreenHeight(20)),
                                  Text(
                                    "Oooops looks like there is no feed here",
                                    style: GoogleFonts.roboto(
                                      color: CWHITE,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNav(selectedMenu: Menu.home));
  }
}
