import 'package:dio/dio.dart';
import 'package:randomuser/Model/randomUserModel.dart';

class RandomUserService{
 static Dio dio = Dio();

 static Future<RandomUserModel> getRandomUser() async{
String Url = "https://randomuser.me/api/?results=50";
var respose = await dio.get(Url);
try{
  if(respose.statusCode == 200){
    return RandomUserModel.formJson(respose.data);
  }else{
    throw Exception("fail to load");
  }
 }catch(e){
 throw Exception(e.toString());
 }
 }
}