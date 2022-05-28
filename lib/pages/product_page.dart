import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: size.width,
              // ? mengukur gambar
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/product_one.png'),
                    fit: BoxFit.cover),
              ),
              child: ListView(
                children: 
                  [Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: backgroundColor4,
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: primaryColor,
                              )),
                        ),
                        Row(
                          children: [
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: backgroundColor4),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: primaryColor,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // todo menurunkan konten
              margin: EdgeInsets.only(top: size.height * 0.45),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ! Menghapus Garis pada Content
                    Align(
                      child: Container(
                        width: 100,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // !Isi Widget Disini
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Toner',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, color: searchColor),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Protect Available Exclusively from a Skincare',
                          style: primaryTextStyle.copyWith(
                              fontSize: 18, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: starColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: starColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: starColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: starColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: starColor,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '(2988 Reviews)',
                              style: searchTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Select Volum',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: primaryColor),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '150 ml',
                                    style: subPrimaryTextStyle3.copyWith(
                                        fontSize: 14, fontWeight: semiBold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: searchColor, width: 2)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '250 ml',
                                    style: searchTextStyle.copyWith(
                                        fontSize: 14, fontWeight: semiBold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: searchColor, width: 2)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '350 ml',
                                    style: searchTextStyle.copyWith(
                                        fontSize: 14, fontWeight: semiBold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 24),
                          child: Text('Descriptions', style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Text("Protect the skin you're in with this reef-safe, non-nano, coated zinc oxide-based sunscreen that offers sheer, long-lasting, and broad-spectrum coverage. Lightweight UVA/UVB mineral protection. Oleosome protected zinc... Read more", style: searchTextStyle.copyWith(fontSize: 12, fontWeight: medium),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
        ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
                bottom: 10
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price', style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),),
                  SizedBox(
                    height: 2,
                  ),
                  Text('\$100.00', style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: defaultMargin
              ),
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor
              ),
              child: TextButton(
                onPressed: (){}, 
                child: Text('Buy Now', style: subPrimaryTextStyle3.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
