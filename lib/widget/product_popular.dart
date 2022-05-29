import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class ProductPopularTile extends StatelessWidget {
  String image;
  String like;
  String title;
  String category;
  String price;

  ProductPopularTile(
      {required this.image,
      required this.like,
      required this.title,
      required this.category,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product_page');
      },
      child: Container(
        margin: EdgeInsets.only(top: 24),
        width: 165,
        height: 295,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 8, top: 8
                  ),
                    child: Image.asset(
                  like,
                  width: 40,
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: semiBold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    category,
                    style: searchTextStyle.copyWith(
                        fontSize: 10, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 18,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: primaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: semiBold),
                      ),
                      Image.asset(
                        'assets/icons/bag_item.png',
                        width: 32,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
