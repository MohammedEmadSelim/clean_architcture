import 'package:weather_claen_archuture/features/weather/Domain/entities/wheather.dart';

abstract class BaseWheatherRepostory2{

  Future <Wheather> getWheatherByCityName(String cityNam);

}