import 'package:flutter/cupertino.dart';
import 'package:ecommerceapp/reusable/font.dart';
class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconcolor;
  
   const IconText({Key? key,
     required this.icon,
     required this.color,
     required this.text,
     required this.iconcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconcolor,),
        SizedBox(width: 2,),
        reusablesmalltext(text: text, color: color, size: 15,),
        SizedBox(width: 7,)
      ],
    );
  }
}
