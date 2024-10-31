import 'package:flutter/material.dart';
class RandomuserCard extends StatelessWidget {
  const RandomuserCard(
      {super.key, required this.name, required this.email,required this.img});
  final String name;
  final String email;
  final String img;
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      shadowColor: Colors.black,
      elevation: 8,
      color: Colors.blue.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 50,
               backgroundImage: NetworkImage(img),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(name , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(email , style: TextStyle(fontSize:20 , ),),
          ),

        ],
      ),
    );
  }

}