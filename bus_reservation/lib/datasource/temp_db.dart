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
    // Casablanca-Rabat (Route 1)
    BusSchedule(
      scheduleId: 1,
      bus: tableBus[0],
      busRoute: tableRoute[0],
      departureTime: '06:00',
      ticketPrice: 70,
    ),
    BusSchedule(
      scheduleId: 2,
      bus: tableBus[1],
      busRoute: tableRoute[0],
      departureTime: '08:00',
      ticketPrice: 70,
    ),
    BusSchedule(
      scheduleId: 3,
      bus: tableBus[2],
      busRoute: tableRoute[0],
      departureTime: '10:00',
      ticketPrice: 70,
    ),

    // Casablanca-Marrakech (Route 2)
    BusSchedule(
      scheduleId: 4,
      bus: tableBus[0],
      busRoute: tableRoute[1],
      departureTime: '05:30',
      ticketPrice: 120,
    ),
    BusSchedule(
      scheduleId: 5,
      bus: tableBus[1],
      busRoute: tableRoute[1],
      departureTime: '07:30',
      ticketPrice: 120,
    ),
    BusSchedule(
      scheduleId: 6,
      bus: tableBus[2],
      busRoute: tableRoute[1],
      departureTime: '09:30',
      ticketPrice: 120,
    ),

    // Casablanca-Fes (Route 3)
    BusSchedule(
      scheduleId: 7,
      bus: tableBus[0],
      busRoute: tableRoute[2],
      departureTime: '06:00',
      ticketPrice: 150,
    ),
    BusSchedule(
      scheduleId: 8,
      bus: tableBus[1],
      busRoute: tableRoute[2],
      departureTime: '09:00',
      ticketPrice: 150,
    ),
    BusSchedule(
      scheduleId: 9,
      bus: tableBus[2],
      busRoute: tableRoute[2],
      departureTime: '12:00',
      ticketPrice: 150,
    ),

    // Casablanca-Tangier (Route 4)
    BusSchedule(
      scheduleId: 10,
      bus: tableBus[0],
      busRoute: tableRoute[3],
      departureTime: '07:00',
      ticketPrice: 180,
    ),
    BusSchedule(
      scheduleId: 11,
      bus: tableBus[1],
      busRoute: tableRoute[3],
      departureTime: '10:00',
      ticketPrice: 180,
    ),

    // Casablanca-Agadir (Route 5)
    BusSchedule(
      scheduleId: 12,
      bus: tableBus[0],
      busRoute: tableRoute[4],
      departureTime: '06:00',
      ticketPrice: 200,
    ),
    BusSchedule(
      scheduleId: 13,
      bus: tableBus[1],
      busRoute: tableRoute[4],
      departureTime: '12:00',
      ticketPrice: 200,
    ),

    // Casablanca-Meknes (Route 6)
    BusSchedule(
      scheduleId: 14,
      bus: tableBus[0],
      busRoute: tableRoute[5],
      departureTime: '07:00',
      ticketPrice: 100,
    ),
    BusSchedule(
      scheduleId: 15,
      bus: tableBus[1],
      busRoute: tableRoute[5],
      departureTime: '10:00',
      ticketPrice: 100,
    ),

    // Rabat-Marrakech (Route 7)
    BusSchedule(
      scheduleId: 16,
      bus: tableBus[0],
      busRoute: tableRoute[6],
      departureTime: '06:30',
      ticketPrice: 130,
    ),
    BusSchedule(
      scheduleId: 17,
      bus: tableBus[1],
      busRoute: tableRoute[6],
      departureTime: '09:30',
      ticketPrice: 130,
    ),

    // Rabat-Fes (Route 8)
    BusSchedule(
      scheduleId: 18,
      bus: tableBus[0],
      busRoute: tableRoute[7],
      departureTime: '07:00',
      ticketPrice: 90,
    ),
    BusSchedule(
      scheduleId: 19,
      bus: tableBus[1],
      busRoute: tableRoute[7],
      departureTime: '10:00',
      ticketPrice: 90,
    ),

    // Rabat-Tangier (Route 9)
    BusSchedule(
      scheduleId: 20,
      bus: tableBus[0],
      busRoute: tableRoute[8],
      departureTime: '08:00',
      ticketPrice: 110,
    ),
  ];
  static List<BusReservation> tableReservation = [];
}
