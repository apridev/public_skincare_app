import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget nameInput(){
      return Container(
        margin: EdgeInsets.only(top: 50, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'Pablo Amore',
                hintStyle: searchTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: searchColor
                  )
                )
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput(){
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: '@pabloamore',
                hintStyle: searchTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: searchColor
                  )
                )
              ),
            ),
          ],
        ),
      );
    }
    Widget emailAddress(){
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'pabloamore@gmail.com',
                hintStyle: searchTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: searchColor
                  )
                )
              ),
            ),
          ],
        ),
      );
    }
    Widget phoneNumber(){
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nomor Telpon',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: '082111334455',
                hintStyle: searchTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: searchColor
                  )
                )
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
            child: Icon(
          Icons.arrow_back_ios_new,
          color: primaryColor,
        )),
        title: Text(
          'Edit Profil',
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                color: primaryColor,
              ))
        ],
        elevation: 1,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: Container(
                  margin: EdgeInsets.only(top: 40),
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
              nameInput(),
              usernameInput(),
              emailAddress(),
              phoneNumber(),
          ],
        ),
      ),
    );
  }
}
