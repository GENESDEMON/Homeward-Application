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
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/skindetails');
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Image.asset(
              skin.image,
              height: 120,
              width: 120,
            ),
            SizedBox(width: getScreenWidth(30)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Season:  " + skin.season,
                  style: GoogleFonts.roboto(
                    color: CWHITE,
                    fontWeight: FontWeight.w400,
                    fontSize: 21,
                  ),
                ),
                SizedBox(height: getScreenHeight(15)),
                Text(
                  "Name:  " + skin.name,
                  style: GoogleFonts.roboto(
                    color: CWHITE,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: getScreenHeight(15)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Price:  " + skin.price,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
