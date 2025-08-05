import '../models/bus_model.dart';
import '../models/bus_reservation.dart';
import '../models/bus_schedule.dart';
import '../models/but_route.dart';
import '../utils/constants.dart';

class TempDB {
  static List<Bus> tableBus = [
    Bus(
      busId: 1,
      busName: 'Test Bus',
      busNumber: 'Test-0001',
      busType: busTypeACBusiness,
      totalSeat: 18,
    ),
    Bus(
      busId: 2,
      busName: 'Test Bus',
      busNumber: 'Test-0002',
      busType: busTypeACEconomy,
      totalSeat: 32,
    ),
    Bus(
      busId: 3,
      busName: 'Test Bus',
      busNumber: 'Test-0003',
      busType: busTypeNonAc,
      totalSeat: 40,
    ),
  ];

  static List<BusRoute> tableRoute = [
    BusRoute(
      routeId: 1,
      routeName: 'Casablanca-Rabat',
      cityFrom: 'Casablanca',
      cityTo: 'Rabat',
      distanceInKm: 90,
    ),
    BusRoute(
      routeId: 2,
      routeName: 'Casablanca-Marrakech',
      cityFrom: 'Casablanca',
      cityTo: 'Marrakech',
      distanceInKm: 240,
    ),
    BusRoute(
      routeId: 3,
      routeName: 'Casablanca-Fes',
      cityFrom: 'Casablanca',
      cityTo: 'Fes',
      distanceInKm: 290,
    ),
    BusRoute(
      routeId: 4,
      routeName: 'Casablanca-Tangier',
      cityFrom: 'Casablanca',
      cityTo: 'Tangier',
      distanceInKm: 340,
    ),
    BusRoute(
      routeId: 5,
      routeName: 'Casablanca-Agadir',
      cityFrom: 'Casablanca',
      cityTo: 'Agadir',
      distanceInKm: 460,
    ),
    BusRoute(
      routeId: 6,
      routeName: 'Casablanca-Meknes',
      cityFrom: 'Casablanca',
      cityTo: 'Meknes',
      distanceInKm: 220,
    ),

    BusRoute(
      routeId: 7,
      routeName: 'Rabat-Marrakech',
      cityFrom: 'Rabat',
      cityTo: 'Marrakech',
      distanceInKm: 320,
    ),
    BusRoute(
      routeId: 8,
      routeName: 'Rabat-Fes',
      cityFrom: 'Rabat',
      cityTo: 'Fes',
      distanceInKm: 210,
    ),
    BusRoute(
      routeId: 9,
      routeName: 'Rabat-Tangier',
      cityFrom: 'Rabat',
      cityTo: 'Tangier',
      distanceInKm: 250,
    ),
    BusRoute(
      routeId: 10,
      routeName: 'Rabat-Agadir',
      cityFrom: 'Rabat',
      cityTo: 'Agadir',
      distanceInKm: 520,
    ),
    BusRoute(
      routeId: 11,
      routeName: 'Rabat-Meknes',
      cityFrom: 'Rabat',
      cityTo: 'Meknes',
      distanceInKm: 150,
    ),

    BusRoute(
      routeId: 12,
      routeName: 'Marrakech-Fes',
      cityFrom: 'Marrakech',
      cityTo: 'Fes',
      distanceInKm: 530,
    ),
    BusRoute(
      routeId: 13,
      routeName: 'Marrakech-Tangier',
      cityFrom: 'Marrakech',
      cityTo: 'Tangier',
      distanceInKm: 580,
    ),
    BusRoute(
      routeId: 14,
      routeName: 'Marrakech-Agadir',
      cityFrom: 'Marrakech',
      cityTo: 'Agadir',
      distanceInKm: 250,
    ),
    BusRoute(
      routeId: 15,
      routeName: 'Marrakech-Meknes',
      cityFrom: 'Marrakech',
      cityTo: 'Meknes',
      distanceInKm: 480,
    ),

    BusRoute(
      routeId: 16,
      routeName: 'Fes-Tangier',
      cityFrom: 'Fes',
      cityTo: 'Tangier',
      distanceInKm: 400,
    ),
    BusRoute(
      routeId: 17,
      routeName: 'Fes-Agadir',
      cityFrom: 'Fes',
      cityTo: 'Agadir',
      distanceInKm: 740,
    ),
    BusRoute(
      routeId: 18,
      routeName: 'Fes-Meknes',
      cityFrom: 'Fes',
      cityTo: 'Meknes',
      distanceInKm: 60,
    ),

    // BusRoute(
    //   routeId: 19,
    //   routeName: 'Tangier-Agadir',
    //   cityFrom: 'Tangier',
    //   cityTo: 'Agadir',
    //   distanceInKm: 820,
    // ),
    BusRoute(
      routeId: 20,
      routeName: 'Tangier-Meknes',
      cityFrom: 'Tangier',
      cityTo: 'Meknes',
      distanceInKm: 360,
    ),

    BusRoute(
      routeId: 21,
      routeName: 'Agadir-Meknes',
      cityFrom: 'Agadir',
      cityTo: 'Meknes',
      distanceInKm: 680,
    ),
  ];

  static List<BusSchedule> tableSchedule = [
    BusSchedule(
      scheduleId: 1,
      bus: tableBus[0],
      busRoute: tableRoute[0],
      departureTime: '18:00',
      ticketPrice: 2000,
    ),
    BusSchedule(
      scheduleId: 2,
      bus: tableBus[1],
      busRoute: tableRoute[0],
      departureTime: '20:00',
      ticketPrice: 1600,
    ),
    BusSchedule(
      scheduleId: 3,
      bus: tableBus[2],
      busRoute: tableRoute[0],
      departureTime: '22:00',
      ticketPrice: 1000,
    ),
    BusSchedule(
      scheduleId: 4,
      bus: tableBus[0],
      busRoute: tableRoute[1],
      departureTime: '18:00',
      ticketPrice: 2000,
    ),
  ];
  static List<BusReservation> tableReservation = [];
}
