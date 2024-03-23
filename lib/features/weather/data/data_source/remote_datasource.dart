import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_claen_archuture/core/utlis/constances.dart';
import 'package:weather_claen_archuture/features/weather/data/models/wheather_model.dart';

abstract class BaseRemoteDataSource{
  Future <WheatherModel?> getWheatherByCountryName(String countryName);

}
//===========================================================================
class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WheatherModel?> getWheatherByCountryName(String countryName) async{
    try{
      var response = await Dio().get('${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appKey}');
      // print(response.data);
      return WheatherModel.formJason(response.data);
    }catch (e){
        print(e);

    }
  }

}