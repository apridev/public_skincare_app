import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';

class Volumntile extends StatelessWidget {

  String name;

  Volumntile({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: primaryColor),
      child: TextButton(
        onPressed: () {},
        child: Text(
          name,
          style:
              subPrimaryTextStyle3.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
      ),
    );
  }
}
