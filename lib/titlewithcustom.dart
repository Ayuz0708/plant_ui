import 'package:flutter/material.dart';
import 'constants.dart';
class TitleWithCustom extends StatelessWidget {
  final String title;
  const TitleWithCustom({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 25,
      child: Stack(
        children: [
          Text('$title',style: TextStyle(color:Colors.white60,fontSize:22,fontWeight: FontWeight.bold),
          ),
          Positioned
            ( left: 0,
              right: 0,
              bottom: 0,
              child: Container(height: 7,color: primarycolor.withOpacity(0.2),)
          )
        ],
      ),
    );
  }
}

