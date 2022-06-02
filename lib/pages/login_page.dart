import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool ishiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    Widget headingLogin() {
      return Container(
        margin: EdgeInsets.only(
            top: 110, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Login',
          style: primaryTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget headingSubLogin() {
      return Container(
        margin:
            EdgeInsets.only(top: 12, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Please login to continue.',
          style:
              subPrimaryTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
        ),
      );
    }

    Widget titleEmail() {
      return Container(
        margin:
            EdgeInsets.only(top: 50, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Email',
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      );
    }

    Widget formEmail() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 18),
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: primaryColor,
          style: const TextStyle(fontSize: 14),
          keyboardType: TextInputType.emailAddress,
          // obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: primaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: backgroundColor3)),
            // prefixIcon: Icon(Icons.person),
            hintText: "Enter your email",
            hintStyle: backgroundTextStyle3.copyWith(
              fontSize: 14
            ),
          ),
        ),
      );
    }

    Widget titlePassword() {
      return Container(
        margin:
            EdgeInsets.only(top: 18, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Password',
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      );
    }

    Widget formPassword() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 18),
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: primaryColor,
          style: const TextStyle(fontSize: 14),
          obscureText: ishiddenPassword,
          // obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: primaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: backgroundColor3)),
            // prefixIcon: Icon(Icons.person),
            hintText: "Enter your password",
            hintStyle: backgroundTextStyle3.copyWith(
              fontSize: 14
            ),
            suffixIcon: InkWell(
              onTap: _isHiddenPassword,
              child: ishiddenPassword == true ? Icon(Icons.remove_red_eye, color: backgroundColor3,) : Icon(Icons.remove_red_eye, color: primaryColor,)
            )
          ),
        ),
      );
    }

    Widget buttomLogin(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30, left: defaultMargin, right: defaultMargin
            ),
            width: 110,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: subPrimaryColor2
              ),
              color: subPrimaryColor
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/main_page');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login', style: subPrimaryTextStyle3.copyWith(
                    fontSize: 14,
                    fontWeight: bold
                  ),),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.arrow_forward_sharp, size: 24, color: subPrimaryColor3,)
                ],
              ),
            ),
          ),
        ],
      );
    }
    
    Widget footer(){
      return Container(
        margin: EdgeInsets.only(
          bottom: 30, top: 20
        ),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don’t have an account?', style: subBackgroundTextStyle.copyWith(
              fontSize: 14
            ),),
            SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/register_page');
              },
              child: Text('Register', style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),),
            )
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/loginView.png"), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingLogin(),
            headingSubLogin(),
            titleEmail(),
            formEmail(),
            titlePassword(),
            formPassword(),
            buttomLogin(),
          ],
        ),
      ),
    ),
    bottomNavigationBar: Container(
      color: backgroundColor,
      child: footer()
    ),
    );
  }

  void _isHiddenPassword(){
    if(ishiddenPassword == true){
      ishiddenPassword = false;
    } else {
      ishiddenPassword = true;
    }
    setState(() {
      
    });
  }

}