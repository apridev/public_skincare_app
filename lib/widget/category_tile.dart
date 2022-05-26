import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class CategoryTile extends StatelessWidget {

  String title;

  CategoryTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8,),
          width: 60,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: searchColor),
          ),
          child: FittedBox(
            child: TextButton(
              onPressed: (){}, 
              child: Text(title, style: searchTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold
              ),)
            ),
          )
        );
  }
}
