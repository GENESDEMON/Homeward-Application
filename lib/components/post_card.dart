import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/components/buttons.dart';
import 'package:slinkshot_app/models/posts.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.post}) : super(key: key);
  final Posts post;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: UnicornOutlineButton(
        height: getScreenHeight(527),
        strokeWidth: 3,
        radius: 34,
        gradient: LinearGradient(
          colors: [CPEACH, CPURPLE],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      post.user_image,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: getScreenWidth(21)),
                    Text(
                      post.user,
                      style: GoogleFonts.roboto(
                        color: CWHITE,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.add_circle, color: CPEACH, size: 24)
                  ],
                ),
              ),
              Image.asset(
                post.image,
                height: getScreenHeight(290),
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      post.game_name,
                      style: GoogleFonts.roboto(
                        color: CWHITE,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.translate,
                      color: CWHITE,
                      size: 19,
                    ),
                    SizedBox(width: getScreenWidth(7)),
                    Icon(
                      Icons.fullscreen_exit,
                      color: CWHITE,
                      size: 19,
                    ),
                    SizedBox(width: getScreenWidth(7)),
                    Icon(
                      Icons.report_problem,
                      color: CWHITE,
                      size: 19,
                    ),
                    SizedBox(width: getScreenWidth(7)),
                    Icon(
                      Icons.share,
                      color: CWHITE,
                      size: 19,
                    ),
                  ],
                ),
              ),
              Container(
                height: getScreenHeight(117),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: CASH.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(34),
                    color: Colors.transparent),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    right: 21,
                    left: 21,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          post.details,
                          style: GoogleFonts.roboto(
                            color: CWHITE,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.7,
                          ),
                        ),
                      ),
                      SizedBox(width: getScreenWidth(33)),
                      Column(
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: CWHITE,
                            size: 13,
                          ),
                          Text(
                            post.views,
                            style: GoogleFonts.roboto(
                              color: CWHITE,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: getScreenHeight(7)),
                          Icon(
                            Icons.favorite,
                            color: CWHITE,
                            size: 13,
                          ),
                          Text(
                            post.likes,
                            style: GoogleFonts.roboto(
                              color: CWHITE,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: getScreenHeight(7)),
                          Icon(
                            Icons.comment,
                            color: CWHITE,
                            size: 13,
                          ),
                          Text(
                            post.comments,
                            style: GoogleFonts.roboto(
                              color: CWHITE,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
