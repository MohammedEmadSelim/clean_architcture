import '../entities/wheather.dart';

abstract class BaseWheatherRepository{


  Future<Wheather> getWheatherByCityName(String cityName);
}

