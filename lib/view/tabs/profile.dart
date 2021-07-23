import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/components/bottom_nav.dart';
import 'package:slinkshot_app/components/post_card.dart';
import 'package:slinkshot_app/enum.dart';
import 'package:slinkshot_app/models/posts.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CBLACK,
        appBar: AppBar(
          backgroundColor: CBLACK,
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 42,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: getScreenHeight(50),
                    width: getScreenWidth(50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: CASH.withOpacity(0.15)),
                    child: Icon(
                      Icons.share,
                      color: CWHITE,
                      size: 18,
                    ),
                  ),
                  SizedBox(width: getScreenWidth(11)),
                  Container(
                    height: getScreenHeight(50),
                    width: getScreenWidth(50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: CASH.withOpacity(0.15)),
                    child: Icon(
                      Icons.shopping_basket,
                      color: CWHITE,
                      size: 18,
                    ),
                  ),
                  SizedBox(width: getScreenWidth(11)),
                  Container(
                    height: getScreenHeight(50),
                    width: getScreenWidth(50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: CASH.withOpacity(0.15)),
                    child: Icon(
                      Icons.settings,
                      color: CWHITE,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 42,
            right: 42,
            top: 40,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/skin2.png",
                        height: 170,
                        width: 170,
                      ),
                      SizedBox(height: getScreenHeight(20)),
                      Text(
                        "Genesdemon",
                        style: GoogleFonts.roboto(
                          color: CWHITE,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: getScreenHeight(10)),
                      Text(
                        "(Victor)",
                        style: GoogleFonts.roboto(
                          color: CWHITE.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: getScreenHeight(50)),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.block,
                                color: CWHITE,
                                size: 13,
                              ),
                              SizedBox(height: getScreenHeight(10)),
                              Text(
                                "No badge",
                                style: GoogleFonts.roboto(
                                  color: CWHITE.withOpacity(0.8),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "11",
                                style: GoogleFonts.roboto(
                                  color: CWHITE,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: getScreenHeight(10)),
                              Text(
                                "Followers",
                                style: GoogleFonts.roboto(
                                  color: CWHITE.withOpacity(0.8),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "13",
                                style: GoogleFonts.roboto(
                                  color: CWHITE,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: getScreenHeight(10)),
                              Text(
                                "Connections",
                                style: GoogleFonts.roboto(
                                  color: CWHITE.withOpacity(0.8),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "28",
                                style: GoogleFonts.roboto(
                                  color: CWHITE,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: getScreenHeight(10)),
                              Text(
                                "Slinkshots",
                                style: GoogleFonts.roboto(
                                  color: CWHITE.withOpacity(0.8),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: getScreenHeight(40)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Bio",
                                style: GoogleFonts.roboto(
                                  color: CWHITE,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "edit",
                                style: GoogleFonts.roboto(
                                  color: CWHITE.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: getScreenHeight(10)),
                          Text(
                            "This is genesdemon’s official skillshot page. I am a gamer from lagos Nigeria. Follow to get notied when i post my game clips.",
                            style: GoogleFonts.roboto(
                              color: CWHITE.withOpacity(0.8),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              height: getScreenHeight(1.7),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getScreenHeight(30)),
                Text(
                  "Slinkshots",
                  style: GoogleFonts.roboto(
                    color: CWHITE,
                    fontWeight: FontWeight.w500,
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: getScreenHeight(30)),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: getScreenHeight(30)),
                      ...List.generate(
                        posts.length,
                        (index) {
                          if (posts[index].user == 'Genesdemon')
                            return PostCard(post: posts[index]);
                          return SizedBox
                              .shrink(); // here by default width and height is 0
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNav(selectedMenu: Menu.profile));
  }
}
