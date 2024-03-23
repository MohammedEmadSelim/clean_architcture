import 'package:weather_claen_archuture/features/weather/Domain/repository%20/base_wheather_repository.dart';

import '../entities/wheather.dart';

class GetWheatherByCountryNameUseCase{

  final BaseWheatherRepository repository;

  GetWheatherByCountryNameUseCase(this.repository);

  Future <Wheather> execute(String countryName)async{
    return await repository.getWheatherByCityName(countryName);

  }
}