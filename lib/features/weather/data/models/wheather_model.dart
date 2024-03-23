import 'package:weather_claen_archuture/features/weather/Domain/entities/wheather.dart';

class WheatherModel extends Wheather {
  WheatherModel(
    super.id,
    super.cityName,
    super.main,
    super.description,
    super.pressure,
  );

  factory WheatherModel.formJason(Map<String, dynamic> jason) {
   return WheatherModel(
        jason['id'],
        jason['name'],
        jason['weather'][0]['main'],
        jason['weather'][0]['description'],
        jason['main']['pressure']);

  }
}
