import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/components/buttons.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';

class SkinDetails extends StatelessWidget {
  const SkinDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CBLACK,
      appBar: AppBar(
        backgroundColor: CBLACK,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/skins');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: CWHITE,
            size: 18,
          ),
        ),
        title: Text(
          "Amax",
          style: GoogleFonts.roboto(
            color: CWHITE,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 42,
          right: 42,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: getScreenHeight(100)),
              Center(
                child: Image.asset(
                  "assets/images/skin2.png",
                  height: 170,
                  width: 170,
                ),
              ),
              SizedBox(height: getScreenHeight(20)),
              Text(
                "Description",
                style: GoogleFonts.roboto(
                  color: CWHITE,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: getScreenHeight(10)),
              Text(
                "Free Download Car Wheel 2 SVG vector file in monocolor and multicolor type for Sketch or Illustrator from Car Wheel 2 Vectors svg vector collection. Car Wheel 2 Vectors SVG vector illustration graphic art design format.. Free Download Car Wheel 2 SVG vector file in monocolor and multicolor type for Sketch or Illustrator from Car Wheel 2 Vectors svg vector collection. Car Wheel 2 Vectors SVG vector illustration graphic art design format..Free Download Car Wheel 2 SVG vector file in monocolor and multicolor type for Sketch or Illustrator from Car Wheel 2 Vectors svg vector collection. Car Wheel 2 Vectors SVG vector illustration graphic art design format.",
                style: GoogleFonts.roboto(
                    color: CWHITE.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    height: getScreenHeight(1.7)),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(42.0),
        child: GradientButton(
          height: getScreenHeight(60),
          width: double.infinity,
          press: () {},
          text: "Buy now",
        ),
      ),
    );
  }
}
