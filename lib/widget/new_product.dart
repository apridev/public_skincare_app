import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class NewProductPage extends StatelessWidget {

  String title;
  String category;
  String price;
  String images;
  String like;

  NewProductPage({
    required this.title,
    required this.category,
    required this.price,
    required this.images,
    required this.like
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: backgroundColor),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              images,
              width: 87,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 14, right: 14, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis),
                        maxLines: 2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    category,
                    style: searchTextStyle.copyWith(
                        fontSize: 12, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    price,
                    style: primaryTextStyle.copyWith(
                        fontSize: 12, fontWeight: semiBold),
                  )
                ],
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.asset(
                like,
                width: 40,
              ))
        ],
      ),
    );
  }
}
