import 'package:weather_claen_archuture/features/weather/Domain/entities/wheather.dart';
import 'package:weather_claen_archuture/features/weather/Domain/repository%20/base_wheather_repository.dart';
import 'package:weather_claen_archuture/features/weather/data/data_source/remote_datasource.dart';

  class WheatherRepository implements BaseWheatherRepository {

  
  final BaseRemoteDataSource baseRemoteDataSource;
  WheatherRepository(this.baseRemoteDataSource);

  @override
  Future<Wheather> getWheatherByCityName(String cityName) async {
    return (await baseRemoteDataSource.getWheatherByCountryName(cityName))!;

    
  }
}
