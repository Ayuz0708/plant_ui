import 'package:flutter/material.dart';
import 'constants.dart';
class FeaturedPlantCard extends StatelessWidget {

  const FeaturedPlantCard({
    Key? key,
    required this.size, required this.image,required  this.press,
  }) : super(key: key);
  final String image;
  final VoidCallback press;

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kpadding,
          top: kpadding / 5,
          bottom:kpadding * 0.75,
        ),
        width: size.width*0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}

