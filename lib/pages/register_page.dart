import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool isHIddenPasword = true;

  @override
  Widget build(BuildContext context) {

    Widget headingRegister() {
      return Container(
        margin: EdgeInsets.only(
            top: 60, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Register',
          style: primaryTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget headingSubRegister() {
      return Container(
        margin:
            EdgeInsets.only(top: 12, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Please register to continue.',
          style:
              subPrimaryTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
        ),
      );
    }

    Widget titleUsername() {
      return Container(
        margin:
            EdgeInsets.only(top: 50, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Username *',
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      );
    }

    Widget formUsernmae() {
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
            hintText: "Enter your username",
            hintStyle: backgroundTextStyle3.copyWith(
              fontSize: 14
            ),
          ),
        ),
      );
    }

    Widget titleEmail() {
      return Container(
        margin:
            EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
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
            EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
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
          obscureText: isHIddenPasword,
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
              child: isHIddenPasword == true ? Icon(Icons.remove_red_eye, color: backgroundColor3,) : Icon(Icons.remove_red_eye, color: primaryColor,)
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
            width: 120,
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
                  Text('Register', style: subPrimaryTextStyle3.copyWith(
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
          bottom: 30
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an account?', style: subBackgroundTextStyle.copyWith(
              fontSize: 14
            ),),
            SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/login_page');
              },
              child: Text('Login', style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: 
          [Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headingRegister(),
              headingSubRegister(),
              titleUsername(),
              formUsernmae(),
              titleEmail(),
              formEmail(),
              titlePassword(),
              formPassword(),
              buttomLogin()
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 6),
        color: backgroundColor,
        child: footer()
      ),
    );
  }

  void _isHiddenPassword(){
    if (isHIddenPasword == true){
      isHIddenPasword = false;
    } else {
      isHIddenPasword = true;
    }
    setState(() {
      
    });
  }

}