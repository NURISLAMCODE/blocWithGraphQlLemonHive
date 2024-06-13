import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lemonhivetask/model/grapgl_model.dart';

class RickandmortyControlr {

  List<Results> rickAndMorky = [];


  Future<List<Results>> getShowRickAndMurky(
    // required Function onSuccess,
    // required Function onFail,
    // required Function onExceptionFail
  ) async {
    try{
      String queryString = r'''
      {
      characters {
        info {
          count
        }
        results {
          id,
          name,
          status,
          species,
          type,
          gender,
          image,
          created,
          location{
          name,
          id,
          dimension,
          created
          },
          episode{
          name,
          id,
          air_date,
          }
          }
          }}''';
      var response = await Dio().post(
        "https://rickandmortyapi.com/graphql",
        options: Options(
            headers: <String, String>{
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            }
        ),
        data: {
          "query": "{characters {info {count }results {id,name,status,species,type,gender,image,created,location{ name,id,dimension,created},episode{name,id,air_date, }}}}"
        }
      );
      print(response.data);
      if(response.statusCode == 200){
        //return GrapQlModel.fromJson(response.data);
        List<dynamic> data = response.data["data"]["characters"]["results"];
        print(data);
        return data.map((element)=>Results.fromJson(element)).toList();
      }else{
       return [];
      }
    } catch (e) {
      // onExceptionFail("${e.error}");
      print(e);
       throw e;
    }
  }
}