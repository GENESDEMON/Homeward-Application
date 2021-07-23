import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/models/skins.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';

class SkinCard extends StatelessWidget {
  const SkinCard({
    Key? key,
    required this.skin,
  }) : super(key: key);
  final Skins skin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 11,
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    skin.image,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(height: getScreenHeight(20)),
                  Text(
                    skin.season,
                    style: GoogleFonts.roboto(
                      color: CWHITE,
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(height: getScreenHeight(10)),
                  Text(
                    skin.name,
                    style: GoogleFonts.roboto(
                      color: CWHITE,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: getScreenHeight(10)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        skin.price,
                        style: GoogleFonts.roboto(
                          color: CWHITE,
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(width: getScreenWidth(2)),
                      Image.asset(
                        "assets/images/C.png",
                        height: 11,
                        width: 11,
                      ),
                    ],
                  ),
                  SizedBox(height: getScreenHeight(27)),
                ],
              ),
              SizedBox(width: getScreenWidth(11)),
            ],
          ),
        ),
      ],
    );
  }
}
