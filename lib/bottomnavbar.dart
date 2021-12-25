import 'package:flutter/material.dart';
import 'constants.dart';
//ignore_for_file:prefer_const_constructors
class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kpadding*2,
        right: kpadding*2,

      ),
      height: 50,
      decoration: BoxDecoration(
          color: primarycolor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,-10),
                blurRadius: 30,
                color: Colors.grey.withOpacity(0.2)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.star_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person))

        ],
      ),
    );
  }
}
