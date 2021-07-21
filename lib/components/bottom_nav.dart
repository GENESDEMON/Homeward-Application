import 'package:flutter/material.dart';
import 'package:slinkshot_app/enum.dart';
import 'package:slinkshot_app/utils/colours.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final Menu selectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 11),
      decoration: BoxDecoration(
        color: CBLACK,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 33,
                  color: Menu.home == selectedMenu ? CWHITE : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/dashboard'),
              ),
              IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 33,
                    color: Menu.search == selectedMenu
                        ? CWHITE
                        : inActiveIconColor,
                  ),
                  onPressed: () {}),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "assets/images/add.png",
                  height: 50,
                  width: 50,
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.shopping_basket,
                    size: 33,
                    color:
                        Menu.skins == selectedMenu ? CWHITE : inActiveIconColor,
                  ),
                  onPressed: () {}),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "assets/images/user.png",
                  height: 33,
                  width: 33,
                ),
              ),
            ],
          )),
    );
  }
}
