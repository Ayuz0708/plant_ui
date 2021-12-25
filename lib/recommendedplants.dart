import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
//ignore_for_file:prefer_const_constructors
class Recommendedplants extends StatelessWidget {
  const Recommendedplants({
    Key? key,
    required this.size, required this.title, required this.image, required this.country, required this.price, required this.press,
  }) : super(key: key);

  final Size size;
  final String title,image,country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kpadding,
        top: kpadding / 5,
        bottom:kpadding * 0.75,
      ),
      width: size.width*0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(

              padding: EdgeInsets.all(kpadding/2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(10),
                      bottomRight: Radius.circular(10)

                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: primarycolor
                    )
                  ]
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "$title\n".toUpperCase(),
                                style: Theme.of(context).textTheme.button
                            ),
                            TextSpan(
                                text: "$country".toUpperCase(),
                                style: TextStyle(color: Colors.blueGrey)
                            )
                          ]
                      )),
                  Spacer(),
                  Text('\$$price',style: Theme.of(context).textTheme.button,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

