import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search', style: TextStyle(color: Colors.grey)),
              Icon(Icons.search, color: Colors.grey,)
            ],
          ),
        ),

        //message
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text('Everyone Flies.. some fly longer than others', style: TextStyle(color: Colors.grey[600]),),
        ),
        // hotpicks
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text('Hot Picks 🔥', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            Text('See all', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
          ],
        )
      ],
    );
  }
}
