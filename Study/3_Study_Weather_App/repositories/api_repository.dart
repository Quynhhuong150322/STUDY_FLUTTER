import 'package:dio/dio.dart';
import '../apps/utills/const.dart';
import '../models/weatherModel.dart';

class ApiRepository {
  static Future<WeatherModel> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=10.903889&lon=106.767778&units=metric&appid=${Mykey.api_token}');
      final data = res.data;
      WeatherModel result = WeatherModel.fromMap(data);
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  static Future<List<WeatherDetail>> callApiGetWeatherDetail() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/forecast?lat=10.903889&lon=106.767778&units=metric&appid=${Mykey.api_token}');
      List data = res.data['list'];
      List<WeatherDetail> result = List<WeatherDetail>.from(
          data.map((e) => WeatherDetail.fromMap(e)).toList());
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
