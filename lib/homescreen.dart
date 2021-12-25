import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';
import 'body.dart';
import 'bottomnavbar.dart';
//ignore_for_file:prefer_const_constructors
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar:Bottomnavbar()
    );
  }

  AppBar buildAppBar() {
    return AppBar(
         elevation: 0,
         backgroundColor:primarycolor,
      leading: IconButton(
        icon: Icon(Icons.drag_handle,size: 30,color: Colors.black87,),
        onPressed: (){},

      ),
    );
  }
}
