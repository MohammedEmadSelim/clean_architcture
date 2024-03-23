import 'package:weather_claen_archuture/features/weather/Domain/entities/wheather.dart';
import 'package:weather_claen_archuture/features/weather/Domain/repository%20/base_wheather_repository2.dart';

class GetWheatherByCountryNameUseCase2 {
  final BaseWheatherRepostory2 baseWheatherRepostory2;
  GetWheatherByCountryNameUseCase2(this.baseWheatherRepostory2);

  Future<Wheather> getWheatherByCityName(String cityNam) {
    return  baseWheatherRepostory2.getWheatherByCityName(cityNam);
  }

}
