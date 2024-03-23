import 'package:dio/dio.dart';
import 'package:weather_claen_archuture/core/utlis/constances.dart';
import 'package:weather_claen_archuture/features/weather/Domain/entities/wheather.dart';
import 'package:weather_claen_archuture/features/weather/data/models/wheather_model.dart';

abstract class BaseRemoteDataSource2 {
  Future<Wheather> getWheatherByCountryName (String cityName);
}

class RemoteDataSource2 implements BaseRemoteDataSource2{
  @override
  Future<Wheather> getWheatherByCountryName(String cityName)async {
    var response = await Dio().get('${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.appKey}');
    // print (response.data);
    return WheatherModel.formJason(response.data);
  }

}