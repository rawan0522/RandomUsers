import 'package:flutter/material.dart';
import 'package:randomuser/Model/randomUserModel.dart';
import '../Service/randomUserService.dart';
class RandomUserProvider extends ChangeNotifier{
RandomUserModel ?randomUserModel;

Future<void>fetchRandomUser() async {
  randomUserModel = await RandomUserService.getRandomUser();
  notifyListeners();
}

}