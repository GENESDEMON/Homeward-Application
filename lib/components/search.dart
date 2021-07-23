import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(50),
      decoration: BoxDecoration(
        color: Color(0xff413F3F).withOpacity(0.54),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: getScreenWidth(20), vertical: getScreenWidth(17)),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: "Search",
          hintStyle: GoogleFonts.roboto(
            color: CWHITE.withOpacity(0.4),
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
