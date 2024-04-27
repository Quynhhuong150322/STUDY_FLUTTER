import 'package:flutter/material.dart';
import '../models/weatherModel.dart';
import '../repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherModel> getWeatherCurrent() async {
    WeatherModel result = await ApiRepository.callApiGetWeather();
    return result;
  }

  Future<List<WeatherDetail>> getWeatherDetail() async {
    List<WeatherDetail> result = await ApiRepository.callApiGetWeatherDetail();
    return result;
  }
}
