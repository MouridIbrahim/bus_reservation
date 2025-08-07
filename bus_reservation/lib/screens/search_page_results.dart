import 'package:bus_reservation/models/but_route.dart';
import 'package:bus_reservation/providers/AppDataProvider.dart';
import 'package:bus_reservation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPageResults extends StatelessWidget {
  const SearchPageResults({super.key});
  @override
  Widget build(BuildContext context) {
    final argList = ModalRoute.of(context)!.settings.arguments as List;
    final BusRoute busRoute = argList[0];
    final String selectedDate = argList[1];
    final provider = Provider.of<Appdataprovider>(context);
    provider.getSchedulesByRouteName(busRoute.routeName);
    return Scaffold(
      appBar: AppBar(title: Text('Search Results')),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Text(
            'Results for route : from ${busRoute.cityFrom} to ${busRoute.cityTo} on the date $selectedDate',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20,),
          Consumer<Appdataprovider>(
            builder: (context, provider, _) => FutureBuilder(
              future: provider.getSchedulesByRouteName(busRoute.routeName),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final scheduleList = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: scheduleList.map((schedule) {
                      return InkWell(
                        onTap: (){},
                        child: Card(
                        
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(schedule.bus.busName),
                                subtitle: Text(schedule.bus.busType),
                                trailing: Text('${schedule.ticketPrice} $currency'),
                                onTap: () {
                                  // Handle schedule selection
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('From: ${schedule.busRoute.cityFrom}'),
                                    Text('To: ${schedule.busRoute.cityTo}'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Departure: ${schedule.departureTime}'),
                                    Text('Total seat: ${schedule.bus.totalSeat}'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }
                if (snapshot.hasError) {
                  return Text('Failed to fetch schedules');
                }
                return Text('Loading schedules...');
              },
            ),
          ),
        ],
      ),
    );
  }
}


