import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/components/bottom_nav.dart';
import 'package:slinkshot_app/components/search.dart';
import 'package:slinkshot_app/components/skin_card.dart';
import 'package:slinkshot_app/enum.dart';
import 'package:slinkshot_app/models/skins.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';

class Skins extends StatelessWidget {
  const Skins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CBLACK,
        appBar: AppBar(
          backgroundColor: CBLACK,
          title: Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              "Skin Market",
              style: GoogleFonts.roboto(
                color: CWHITE,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 42,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/C.png",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: getScreenWidth(11)),
                  Image.asset(
                    "assets/images/wheel.png",
                    height: 24,
                    width: 24,
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
                SearchField(),
                SizedBox(height: getScreenHeight(30)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "700",
                      style: GoogleFonts.roboto(
                        color: CWHITE,
                        fontWeight: FontWeight.w500,
                        fontSize: 36,
                      ),
                    ),
                    SizedBox(width: getScreenWidth(11)),
                    Image.asset(
                      "assets/images/C.png",
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
                SizedBox(height: getScreenHeight(10)),
                SingleChildScrollView(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      ...List.generate(
                        skins.length,
                        (index) {
                          return SkinCard(
                            skin: skins[index],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNav(selectedMenu: Menu.skins));
  }
}
