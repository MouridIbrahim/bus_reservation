import 'package:bus_reservation/utils/constants.dart';
import 'package:flutter/material.dart';

class SeatsPlan extends StatelessWidget {
  final int totalSeat;
  final String bookedSeatNumbers;
  final int totalSeatBooked;
  final bool isBusinessClass;
  final Function(bool, String) onSeatSelected;
  const SeatsPlan({
    super.key,
    required this.totalSeat,
    required this.bookedSeatNumbers,
    required this.totalSeatBooked,
    required this.isBusinessClass,
    required this.onSeatSelected,
  });

  @override
  Widget build(BuildContext context) {
    final numberOfRows = (isBusinessClass ? totalSeat / 3 : totalSeat / 4)
        .toInt();
    final numberOfColumns = isBusinessClass ? 3 : 4;
    List<List<String>> seatArrangement = [];
    for (int i = 0; i < numberOfRows; i++) {
      List<String> columns = [];
      for (int j = 0; j < numberOfColumns; j++) {
        columns.add('${seatLabelList[i]}${j + 1}');
      }
      seatArrangement.add(columns);
    }
    final List<String> bookedSeatsList = bookedSeatNumbers.isEmpty
        ? []
        : bookedSeatNumbers.split(',');

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 236, 236),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Text(
            'Seats',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 3.0,
          ),
          Column(
            children: [
              for (int i = 0; i < seatArrangement.length; i++)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int j = 0; j < seatArrangement[i].length; j++)
                      Row(
                        children: [
                          Seat(
                            label: seatArrangement[i][j],
                            isBooked: bookedSeatsList.contains(seatArrangement[i][j]),
                            onSelected: (isSelected) {
                              onSeatSelected(isSelected, seatArrangement[i][j]);
                            },
                          ),
                          if(isBusinessClass && j==0)
                            const SizedBox(width: 20), // Space between middle seats in business class
                          if(!isBusinessClass && j==1)
                            const SizedBox(width: 20), // Space between middle seats in business class
                        ],
                      ),
                  ],
                ),
            ],
          )
        ],
      ),
    );
  }
}

class Seat extends StatefulWidget {
  final String label;
  final bool isBooked;
  final Function(bool) onSelected;
  const Seat({
    super.key,
    required this.label,
    required this.isBooked,
    required this.onSelected,
  });

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(8.0),
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.isBooked
              ? Colors.blue
              : selected
              ? Colors.blueGrey
              : Colors.grey,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: widget.isBooked
              ? null
              : [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4.0,
                    offset: Offset(2, 2),
                  ),
                ],
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
