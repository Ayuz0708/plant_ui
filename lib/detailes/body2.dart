import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';
//ignore_for_file:prefer_const_constructors
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          images_and_icons(size: size),
          price_and_title(),
          SizedBox(height: kpadding,),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: ElevatedButton(onPressed: (){},
                    child: Text("Buy"),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.grey))),
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Description'),
                     style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(bgcolor)),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}

class price_and_title extends StatelessWidget {
  const price_and_title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(text: TextSpan(
          children: [
            TextSpan(
              text: "Hybiscus\n",
              style: Theme.of(context).textTheme.headline4!.copyWith(color:primarycolor,fontWeight: FontWeight.bold)
            ),
            TextSpan(
              text: "Russia",
              style: TextStyle(fontWeight: FontWeight.w300,color: primarycolor,fontSize: 20)
            )
          ]
        ),),
        Spacer(),
        Text('\$220',style: Theme.of(context).textTheme.headline5!.copyWith(color: primarycolor),)
      ],
    );
  }
}

class images_and_icons extends StatelessWidget {
  const images_and_icons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:kpadding*3),
      child: SizedBox(
        height: size.height*0.8,
        child: Row(
          children: [
            Expanded(
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: kpadding*3),
                  child: Column(
              children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(icon: Icon(Icons.arrow_back_outlined),iconSize: 30
                      , onPressed: () {Navigator.of(context).pop();},),
                  ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(kpadding/2),
                  margin: EdgeInsets.all(size.height*0.03),
                  height: 60,
                  width: 62,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20
                                                  )
                    ]
                  ),
                  child: Icon(Icons.brightness_5,size: 35,),
                ),

                Container(
                  padding: EdgeInsets.all(kpadding/2),
                  margin: EdgeInsets.all(size.height*0.03),
                  height: 60,
                  width: 62,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20
                        )
                      ]
                  ),
                  child: Icon(Icons.device_thermostat,size: 35,),
                ),
                Container(
                  padding: EdgeInsets.all(kpadding/2),
                  margin: EdgeInsets.all(size.height*0.03),
                  height: 60,
                  width: 62,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20
                        )
                      ]
                  ),
                  child: Icon(Icons.wb_incandescent ,size: 35,),
                ),

              ],
            ),
                )
            ),
            Container(
              height: size.height*0.85,
              width: size.width*0.70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),bottomLeft: Radius.circular(60)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 35,
                    color: Colors.grey.withOpacity(0.25)
                  )
                ],
                image: DecorationImage(image: AssetImage('assets/images/6.jpg'),
                fit: BoxFit.cover,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
