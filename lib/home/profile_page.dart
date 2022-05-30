import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            centerTitle: true,
            title: Text(
              'Profile',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            backgroundColor: backgroundColor,
            elevation: 0,
            leading: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/menu_profile.png',
                    color: primaryColor,
                    height: 32,
                  ),
                  )
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/profile_user.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    border: Border.all(color: primaryColor, width: 3),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pablo Diablo',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '@pablodiablo',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 24),
                  width: 140,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: primaryColor),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_profile');
                    },
                    child: Text(
                      'Edit Profil',
                      style: subPrimaryTextStyle3.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 24, left: defaultMargin, right: defaultMargin),
                child: Divider(
                  color: backgroundColor3,
                  thickness: 0.7,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 12, left: defaultMargin, right: defaultMargin),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.settings,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Text(
                              'Pengaturan',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: semiBold),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColor,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.book,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Text(
                              'Detail Pembayaran',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: semiBold),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColor,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.supervised_user_circle_rounded,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Text(
                              'Manajemen Akun',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: semiBold),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColor,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 24, left: defaultMargin, right: defaultMargin),
                child: Divider(
                  color: backgroundColor3,
                  thickness: 0.7,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.help,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Text(
                              'Informasai Akun',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: semiBold),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColor,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.logout_outlined,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Text(
                              'Log out',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: semiBold),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor2),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColor,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
