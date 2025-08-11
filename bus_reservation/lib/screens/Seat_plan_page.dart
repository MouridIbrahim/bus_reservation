import 'package:bus_reservation/customWidget/Seat_Plan_View.dart';
import 'package:bus_reservation/models/bus_schedule.dart';
import 'package:bus_reservation/utils/colors.dart';
import 'package:bus_reservation/utils/constants.dart';
import 'package:flutter/material.dart';

class SeatPlanView extends StatefulWidget {
  const SeatPlanView({super.key});

  @override
  State<SeatPlanView> createState() => _SeatPlanViewState();
}

class _SeatPlanViewState extends State<SeatPlanView> {
  late BusSchedule schedule;
  late String selectedDate;
  int totalSeatBooked = 0;
  String bookedSeatsNumbers = '';
  List<String> selectedSeats = [];
  bool isFirst = true;
  bool isDataLoaded = true;
  ValueNotifier<String> selectedSeatNotifier = ValueNotifier('');

  @override
  void didChangeDependencies() {
    final argList = ModalRoute.of(context)?.settings.arguments as List;
    schedule = argList[0];
    selectedDate = argList[1];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seat Plan')),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(height: 20, width: 20, color: Colors.blue),
                        Text(
                          ' Booked',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(height: 20, width: 20, color: Colors.grey),
                        Text(
                          ' Available',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ValueListenableBuilder(
              valueListenable: selectedSeatNotifier,
              builder: (context, value, _) => Text(
                'Selected: $value',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Expanded(child: SingleChildScrollView(
              child: SeatsPlan(
                onSeatSelected: (value, seat){

                },
                totalSeatBooked: totalSeatBooked,
                bookedSeatNumbers: bookedSeatsNumbers,
                totalSeat: schedule.bus.totalSeat,
                isBusinessClass: schedule.bus.busType==busTypeACBusiness,
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {}, child: Text('Next')),
            ),
          ],
        ),
      ),
    );
  }
}
