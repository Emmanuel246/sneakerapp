import 'package:flutter/material.dart';
import 'package:learningdart/models/shoe.dart';

class ShoeTile extends StatelessWidget {
    Shoe shoe;
   ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
           ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath)
            ),


          // description
          Text(shoe.decription,
          style: TextStyle(color: Colors.grey[600]),
          ),


          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // shoe name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // shoe name
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      ),
            
                    SizedBox(height: 5,),
                    // price
                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(color: Colors.grey),
                      )
                  ],
                ),
            
                //plus button
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                )
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                
                ),
              
              )
              ],
            ),
          ),

        ],
      ),
    );
  }
}