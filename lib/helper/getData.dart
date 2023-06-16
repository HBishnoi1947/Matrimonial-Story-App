import 'dart:convert';

import 'package:http/http.dart';

import 'app_url.dart';
import 'model.dart';

class GetData{

  Future <MyModel> getFirstPage() async{

    final response = await get(Uri.parse(AppUrl.page_1));

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return MyModel.fromJson(data);
    }
    else{
      throw Exception('Error');
    }
  }

  Future <MyModel> getNextPage() async{

    final response = await get(Uri.parse(AppUrl().nextPage()));

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return MyModel.fromJson(data);
    }
    else{
      throw Exception('Error');
    }
  }

  Future <MyModel> getPreviousPage() async{

    final response = await get(Uri.parse(AppUrl().previousPage()));

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return MyModel.fromJson(data);
    }
    else{
      throw Exception('Error');
    }
  }


  // Future <List<dynamic>> xxxxx() async{

  //   final response = await get(Uri.parse(AppUrl.xxxx));

  //   if(response.statusCode == 200){
  //     var data = jsonDecode(response.body);
  //     return data;
  //   }
  //   else{
  //     throw Exception('Error');
  //   }
  // }
}