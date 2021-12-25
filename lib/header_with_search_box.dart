import 'package:flutter/material.dart';
import 'constants.dart';
//ignore_for_file:prefer_const_constructors
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kpadding*0.25),
      height:size.height*0.25,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: kpadding,right: kpadding,bottom: 20+kpadding
            ),
            height: size.height*0.2-20,
            decoration: BoxDecoration(
                color: primarycolor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(36),
                    bottomLeft: Radius.circular(36)
                )
            ),
            child: Row(
              children: [
                Text('Hi plantify!',style: Theme.of(context).textTheme.headline5!.copyWith(color: bgcolor,fontWeight: FontWeight.bold),),
                Spacer(),
                Image.asset('assets/images/logo.jpg')
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              left: 10,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kpadding),
                padding: EdgeInsets.symmetric(horizontal: kpadding),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade200,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,5),
                          blurRadius: 50,
                          color: primarycolor.withOpacity(0.23)
                      )
                    ]
                ),

                child: TextField(
                  onChanged: (value){},
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: bgcolor),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(Icons.search,size: 30,)
                  ),

                ),
              )
          )
        ],
      ),
    );
  }
}
