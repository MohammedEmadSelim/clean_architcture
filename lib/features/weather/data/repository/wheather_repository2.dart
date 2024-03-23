import 'package:weather_claen_archuture/features/weather/Domain/entities/wheather.dart';
import 'package:weather_claen_archuture/features/weather/Domain/repository%20/base_wheather_repository2.dart';
import 'package:weather_claen_archuture/features/weather/data/data_source/remote_datasource2.dart';

class WheatherRopository2 implements BaseWheatherRepostory2{
  final BaseRemoteDataSource2 baseRmoteDataSource2;
  WheatherRopository2(this.baseRmoteDataSource2);

  @override
  Future<Wheather> getWheatherByCityName(String cityNam) {
    return baseRmoteDataSource2.getWheatherByCountryName(cityNam);
  }



}