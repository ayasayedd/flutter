import '../screens/category_trips_screen.dart';

import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String id;
 
   CategoryItem(this.title,this.imageUrl,this.id);
   void selectCategory(BuildContext ctx){
    Navigator.of( ctx).pushNamed(
      CategoryTripsScreen.screenRoute,
      arguments: {
        'id' : id,
        'title' : title,
      }
    );
   }
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Color(0xff305cac),
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(imageUrl,
            height: 250,
            fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(title,
            style: TextStyle(fontSize: 30,
            color: Colors.white),
            ),
           
            decoration: BoxDecoration(
               color: Colors.black.withOpacity(0.4),
              borderRadius:
               BorderRadius.circular(15)),
          )
        ],
      ),
    );
  }
}