import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomuser/Provider/randomUserProvider.dart';
import 'package:randomuser/Widget/randomUserCard.dart';
class Randomeuserscreen extends StatelessWidget {
  const Randomeuserscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Random Users" , style: TextStyle(fontSize: 20,color:Colors.white),),
      ),
      body:Consumer<RandomUserProvider>(
          builder: (context, provider, child){
               final randomUser=provider.randomUserModel;
               if(randomUser == null){
                  provider.fetchRandomUser();
                   return Center(
                     child: CircularProgressIndicator(),
                   );
               }else{
                 return ListView.separated(
                     itemBuilder: (context, index) {
                         final Name =randomUser.data.elementAt(index)["Name"];
                         final Email =randomUser.data.elementAt(index)["Email"];
                         final image =randomUser.data.elementAt(index)["img"];
                         return RandomuserCard(
                             name:Name ,
                             email: Email,
                             img: image);
                     },
                     separatorBuilder:(context, index) => const SizedBox(height:10 ,),
                     itemCount:randomUser.data.length);
               }
          },
      )
    );
  }
}
