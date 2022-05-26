import 'package:flutter/material.dart';
import 'package:public_skincare_app/home/explore_page.dart';
import 'package:public_skincare_app/home/home_page.dart';
import 'package:public_skincare_app/home/profile_page.dart';
import 'package:public_skincare_app/home/wishlist_page.dart';
import 'package:public_skincare_app/template.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget bottomNavbar() {
      return BottomNavigationBar(
          backgroundColor: backgroundColor,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
              print(value);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/home_icon.png',
                      width: 24,
                      color:
                          currentIndex == 0 ? primaryColor : subBackgroundColor,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    currentIndex == 0
                        ? Text(
                            'Home',
                            style: primaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: semiBold),
                          )
                        : Text(
                            'Home',
                            style: subBackgroundTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          )
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/explore_icon.png',
                        width: 24,
                        color: currentIndex == 1
                            ? primaryColor
                            : subBackgroundColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      currentIndex == 1
                          ? Text(
                              'Explore',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 12, fontWeight: semiBold),
                            )
                          : Text(
                              'Explore',
                              style: subBackgroundTextStyle.copyWith(
                                  fontSize: 12, fontWeight: medium),
                            )
                    ],
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/wishlist__icon.png',
                        width: 24,
                        color: currentIndex == 2
                            ? primaryColor
                            : subBackgroundColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      currentIndex == 2
                          ? Text(
                              'Wishlist',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 12, fontWeight: semiBold),
                            )
                          : Text(
                              'Wishlist',
                              style: subBackgroundTextStyle.copyWith(
                                  fontSize: 12, fontWeight: medium),
                            )
                    ],
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/profile_icon.png',
                        width: 24,
                        color: currentIndex == 3
                            ? primaryColor
                            : subBackgroundColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      currentIndex == 3
                          ? Text(
                              'Profile',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 12, fontWeight: semiBold),
                            )
                          : Text(
                              'Profile',
                              style: subBackgroundTextStyle.copyWith(
                                  fontSize: 12, fontWeight: medium),
                            )
                    ],
                  ),
                ),
                label: ''),
          ]);
    }

    Widget body(){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ExplorePage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: body(),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}
