import 'package:flutter/material.dart';
import 'package:public_skincare_app/onboarding_data.dart';
import 'package:public_skincare_app/template.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndikator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 12),
      duration: Duration(milliseconds: 400),
      width: 12,
      height: 12,
      decoration: BoxDecoration( 
        color: currentIndex == index ? primaryColor : subPrimaryColor2, 
        shape: BoxShape.circle
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 9,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value){
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: onBoardingList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 150, left: 30, right: 30),
                        child: Text(
                          onBoardingList[index].title,
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold, height: 1.7),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Image.asset(
                            onBoardingList[index].image,
                            width: 135,
                            height: 140,
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 50, left: 30, right: 30),
                        child: Text(
                          onBoardingList[index].subtitle,
                          style: subPrimaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium, height: 1.7),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    currentIndex == onBoardingList.length - 1 ?
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 143,
                              height: 35,
                              margin: EdgeInsets.only(
                                right: 10
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: subPrimaryColor3
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamedAndRemoveUntil(context, '/login_page', (route) => false);
                                },
                                child: Text('Masuk', style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: semiBold
                                ),),
                              ),
                            ),
                            Container(
                              width: 143,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: primaryColor
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamedAndRemoveUntil(context, '/register_page', (route) => false);
                                },
                                child: Text('Daftar', style: subPrimaryTextStyle3.copyWith(
                                  fontSize: 12,
                                  fontWeight: semiBold
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ) :
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/login_page', (route) => false);
                        }, child: Text('Masuk',style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold
                        ),),
                        ),
                        Row(
                          children: List.generate(onBoardingList.length,
                              (index) => dotIndikator(index),
                              ),
                        ),
                        Container(
                          width: 70,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: primaryColor
                          ),
                          child: TextButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut
                              );
                            }, 
                            child: Text('Lewati', style: subPrimaryTextStyle3.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
