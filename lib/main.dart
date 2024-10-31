import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomuser/Provider/randomUserProvider.dart';
import 'package:randomuser/Screen/randomeUserScreen.dart';
void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(create: (context) => RandomUserProvider(),child: Randomeuserscreen(),),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
