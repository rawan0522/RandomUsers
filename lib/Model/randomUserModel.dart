class RandomUserModel{
  List data;
RandomUserModel({required this.data});

factory RandomUserModel.formJson(Map<String , dynamic>json){
  List<dynamic>fullData;
  fullData = json["results"].map(
          (user){
              return{
                "Name" : user["name"]["first"]+ " "+ user["name"]["last"],
                "Email": user["email"],
                "img" : user["picture"]["thumbnail"],
              };
          }
  ).toList();
  return RandomUserModel(data: fullData,);
}
}