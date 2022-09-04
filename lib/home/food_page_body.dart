import 'package:ecommerceapp/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/reusable/font.dart';
import 'package:flutter/rendering.dart';
import 'package:ecommerceapp/reusable/icon_text.dart';
import 'package:dots_indicator/dots_indicator.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody>{

  PageController pageController = PageController(viewportFraction: 0.9);
  var currPageValue = 0.0;
  double scaleFactor = 0.8;
  double height = Dimensions.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        currPageValue = pageController.page!;
      });
    });
  }
  @override
  void dispose(){
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          height: Dimensions.wholeContainer,
          child: PageView.builder(
            controller: pageController,
              itemCount: 5,
              itemBuilder: (context,position){
            return _buildPageItem(position);
          }),
        ),
        new DotsIndicator(
        dotsCount: 5,
        position: currPageValue,
        decorator: DotsDecorator(
        activeColor: Colors.yellow[600] ,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
    ),
      ],
    );
  }
  Widget _buildPageItem(int index){

    Matrix4 matrix = new Matrix4.identity();
    if (index == currPageValue.floor()){
      var currScale = 1-(currPageValue - index)*(1 - scaleFactor);
      var currTrans = height*(1 - currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if (index == currPageValue.floor() + 1){
      var currScale = scaleFactor + (currPageValue - index + 1)*(1 - scaleFactor);
      var currTrans = height*(1 - currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if (index == currPageValue.floor() - 1){
      var currScale = scaleFactor + (currPageValue - index - 1)*(1 - scaleFactor);
      var currTrans = height*(1 - currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,height*(1-scaleFactor)/2, 1);


    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
        Container(
        height: height,
        margin: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://theflavoursofkitchen.com/wp-content/uploads/2022/01/Chicken-Shawarma-5-scaled.jpg'
                  ),
                fit: BoxFit.cover
                  ),
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            color: Colors.yellow
            ),
          ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left:Dimensions.width40,right: Dimensions.width40,bottom: Dimensions.height20),
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(color: Colors.grey,
                            blurRadius: 5.0,
                            offset: Offset(0, 2.5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5,0)
                  ),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(5,0)
                  ),


                ],
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: Colors.white
              ),
            child: Container(
              child: Padding(
                padding:  EdgeInsets.only(top: Dimensions.height15,left: Dimensions.width15,right:Dimensions.width15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusabletext(text: 'Shawerma Arabi', size: 19),
                    SizedBox(height: Dimensions.sizedheight10,),
                    Row(
                      
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star,color: Colors.blue,size: 15,)),
                        ),
                        SizedBox(width: 10,),
                        reusablesmalltext(text: '5', size: 15),
                        SizedBox(width: 10,),
                        reusablesmalltext(text: '1255', size: 15),
                        SizedBox(width: 4,),
                        reusablesmalltext(text: 'Comments', size: 15),
                      ],
                    ),
                    SizedBox(height: Dimensions.sizedheight5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                      ,
                      children: [
                        IconText(icon: Icons.circle_sharp, color: Colors.grey, text: 'Normal', iconcolor: Colors.orange),
                        IconText(icon: Icons.location_on, color: Colors.grey, text: '2.6 Km', iconcolor: Colors.lightBlueAccent),
                        IconText(icon: Icons.access_alarm_rounded, color: Colors.grey, text: '17 mins', iconcolor: Colors.redAccent)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ),
        ),
        ],
      ),
    );
  }
}
