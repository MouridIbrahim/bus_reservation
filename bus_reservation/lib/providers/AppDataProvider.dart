import 'package:bus_reservation/datasource/data_source.dart';
import 'package:bus_reservation/datasource/dummy_data_source.dart';
import 'package:bus_reservation/models/bus_schedule.dart';
import 'package:bus_reservation/models/but_route.dart';
import 'package:flutter/material.dart';

class Appdataprovider extends ChangeNotifier{

  List<BusSchedule> _availableRoutes = [];
  List<BusSchedule> get availableRoutes => _availableRoutes;

  final DataSource _dataSource = DummyDataSource();
  Future<BusRoute?> getRouteByCityFromAndCityTo(String cityFrom, String cityTo)  {
    return _dataSource.getRouteByCityFromAndCityTo(cityFrom, cityTo);
  }

  Future<List<BusSchedule>> getSchedulesByRouteName(String routeName) async {
    return _dataSource.getSchedulesByRouteName(routeName);
  }
}