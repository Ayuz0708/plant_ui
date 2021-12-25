import 'package:flutter/material.dart';
import 'package:plant_ui/detailes/details.dart';
import 'package:plant_ui/recommendedplants.dart';
import 'package:plant_ui/titlewithcustom.dart';

import 'featuredplantcard.dart';
import 'header_with_search_box.dart';
//ignore_for_file:prefer_const_constructors
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Row(
            children: [
              TitleWithCustom(title:'Suggested'),
              Spacer(),
              TextButton(onPressed: (){}, child: Text('More',style: TextStyle(color: Colors.white,fontSize: 20),),),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Recommendedplants(
                    size: size, title: 'Money Plant', country: 'Himalaya', price: 220,image: 'assets/images/1.jpg',
                  press: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailsScreen() ));
                  },

                ),
                Recommendedplants(
                  size: size, title: 'Sanseveieria', country: 'Madagascar', price: 500,image: 'assets/images/2.jpg',press: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailsScreen() ));
                },

                ),
                Recommendedplants(
                  size: size, title: 'Betel', country: 'Assam', price: 160,image: 'assets/images/3.png',press: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailsScreen()));
                },

                ),
                Recommendedplants(
                  size: size, title: 'Pink leaf', country: 'Paris', price: 80,image: 'assets/images/4.png',press: (){},

                ),
              ],
            ),
          ),
          TitleWithCustom(title:'Featured'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedPlantCard(size: size, image: 'assets/images/5.jpg', press: () {  },),
                FeaturedPlantCard(size: size, image: 'assets/images/6.jpg', press: () {  },),
              ],
            ),
          )
        ],
      ),
    );
  }
}

