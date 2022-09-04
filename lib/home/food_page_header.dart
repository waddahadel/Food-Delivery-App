import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/reusable/font.dart';
import '../utils/dimensions.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
     print("current height is" + " " + MediaQuery.of(context).size.height.toString());
    return Scaffold(

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    reusabletext(text: 'Country', size: 19),
                    reusablesmalltext(text: 'City', size: 15)
                      ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Icon(Icons.search,color: Colors.black,size: Dimensions.searchSize,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                    color: Colors.amber
                  ),
                ),
              ],
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
