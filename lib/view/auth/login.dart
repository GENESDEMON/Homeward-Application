import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/components/buttons.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';

class Login extends StatelessWidget {
  final kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
    border: Border.all(color: CPEACH),
    borderRadius: BorderRadius.circular(32),
  );
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: CBLACK,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(42, 161, 42, 0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 70,
                width: 70,
              ),
              SizedBox(height: getScreenHeight(30)),
              Text(
                "Welcome Back",
                style: GoogleFonts.roboto(
                  color: CWHITE,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: getScreenHeight(70)),
              TextFormField(
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 0, bottom: 5, top: 11, right: 0),
                  hintText: 'Username',
                  hintStyle: GoogleFonts.roboto(
                    color: CWHITE.withOpacity(0.51),
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                height: 3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [CPEACH, CPURPLE],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.5, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
              ),
              SizedBox(height: getScreenHeight(40)),
              TextFormField(
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 0, bottom: 5, top: 11, right: 0),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.roboto(
                    color: CWHITE.withOpacity(0.51),
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                height: 3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [CPEACH, CPURPLE],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.5, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
              ),
              SizedBox(height: getScreenHeight(70)),
              GradientButton(
                height: getScreenHeight(60),
                width: double.infinity,
                press: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                text: "Login",
              ),
              SizedBox(height: getScreenHeight(30)),
              UnicornOutlineButton(
                height: 60,
                strokeWidth: 3,
                radius: 34,
                gradient: LinearGradient(
                  colors: [CPEACH, CPURPLE],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.google,
                      size: 17, //Icon Size
                      color: CWHITE, //Color Of Icon
                    ),
                    SizedBox(width: getScreenWidth(7)),
                    Text(
                      'Continue with google',
                      style: GoogleFonts.roboto(
                        color: CWHITE,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
              SizedBox(height: getScreenHeight(110)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Create an account',
                    style: GoogleFonts.roboto(
                      color: CWHITE,
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Forgot Password',
                    style: GoogleFonts.roboto(
                      color: CWHITE,
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
