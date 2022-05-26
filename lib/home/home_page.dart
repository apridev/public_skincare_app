import 'package:flutter/material.dart';
import 'package:public_skincare_app/template.dart';
import 'package:public_skincare_app/widget/category_tile.dart';
import 'package:public_skincare_app/widget/new_product.dart';
import 'package:public_skincare_app/widget/product_popular.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget heading() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: backgroundColor4),
              child: TextButton(
                onPressed: () {},
                child: Center(
                  child: Image.asset(
                    'assets/icons/menu_titik.png',
                    width: 30,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/img/heading.png',
                width: 60,
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: backgroundColor4),
              child: TextButton(
                onPressed: () {},
                child: Center(
                  child: Image.asset(
                    'assets/icons/Bag_home.png',
                    width: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 24),
        child: TextField(
          cursorColor: primaryColor,
          style: const TextStyle(fontSize: 14),
          textInputAction: TextInputAction.search,
          onSubmitted: (value) {
            print("Search");
          },
          // obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: primaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: searchColor)),
            // prefixIcon: Icon(Icons.person),
            prefixIcon: Icon(
              Icons.search,
              color: searchColor,
            ),
            hintText: "Search for skincare",
            hintStyle: searchTextStyle.copyWith(fontSize: 14),
          ),
        ),
      );
    }

    Widget titleCategory() {
      return Container(
        margin:
            EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                'Category',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
            ),
            Container(
              child: Text(
                'See all',
                style: subPrimaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categoryList() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor),
                    child: FittedBox(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Semua',
                            style: subPrimaryTextStyle3.copyWith(
                                fontSize: 12, fontWeight: semiBold),
                          )),
                    )),
                CategoryTile(
                  title: 'Cleanser',
                ),
                CategoryTile(
                  title: 'Toner',
                ),
                CategoryTile(
                  title: 'Serum',
                ),
                CategoryTile(
                  title: 'Handbody',
                ),
                CategoryTile(
                  title: 'Handbody',
                ),
                CategoryTile(
                  title: 'Handbody',
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget titleProduct() {
      return Container(
        margin:
            EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                'Product Populer',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
            ),
            Container(
              child: Text(
                'See all',
                style: subPrimaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget productPopular() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProductPopularTile(
              image: 'assets/img/product_one.png',
              title: 'Circumference Active Botanical Refining Toner',
              category: 'Toner',
              price: '\$60.00',
              like: 'assets/icons/like_hidden.png',
            ),
            ProductPopularTile(
              image: 'assets/img/product_two.png',
              title: 'Protect Available Exclusively from a Skincare',
              category: 'Toner',
              price: '\$60.00',
              like: 'assets/icons/like_active.png',
            ),
          ],
        ),
      );
    }

    Widget titleNewProduct() {
      return Container(
        margin:
            EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                'New Product',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
            ),
          ],
        ),
      );
    }

    Widget newProduct() {
      return Column(
        children: [
          NewProductPage(
            title: 'Environ package skin EssentiA*', 
            category: 'Package Item', 
            price: '\$190.00', 
            images: 'assets/img/product_three.png', 
            like: 'assets/icons/like_hidden.png'
          ),
          NewProductPage(
            title: 'Circumference Active Botanical Refining Toner', 
            category: 'Toner', 
            price: '\$60.00', 
            images: 'assets/img/product_one.png', 
            like: 'assets/icons/like_hidden.png'
          ),
          NewProductPage(
            title: 'Protect Available Exclusively from a Skincare', 
            category: 'Sunscreen', 
            price: '\$100.00', 
            images: 'assets/img/product_two.png', 
            like: 'assets/icons/like_hidden.png'
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading(),
              search(),
              titleCategory(),
              categoryList(),
              titleProduct(),
              productPopular(),
              titleNewProduct(),
              newProduct(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
