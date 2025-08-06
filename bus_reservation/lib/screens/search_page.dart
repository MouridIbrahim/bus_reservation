import 'package:bus_reservation/providers/AppDataProvider.dart';
import 'package:bus_reservation/utils/constants.dart';
import 'package:bus_reservation/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? fromCity, toCity;
  DateTime? selectedDate;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        leading: Icon(Icons.list, color: Colors.white),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(8.0),
          children: [
            SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: fromCity,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return emptyFieldErrMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                errorStyle: const TextStyle(color: Colors.red),
                filled: true,
                fillColor: Colors.grey[200], // Grey background
                border: InputBorder.none, // Removes all borders
                enabledBorder: InputBorder.none, // Removes border when enabled
                focusedBorder: InputBorder.none, // Removes border when focused
                errorBorder:
                    InputBorder.none, // Removes border when there's an error
                focusedErrorBorder: InputBorder.none,
              ),
              hint: Text(
                'From',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.9), // Change opacity here
                ),
              ),
              isExpanded: true,
              items: cities
                  .map(
                    (city) => DropdownMenuItem<String>(
                      value: city,
                      child: Text(city),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                fromCity = value;
              },
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: toCity,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return emptyFieldErrMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                errorStyle: const TextStyle(color: Colors.red),
                filled: true,
                fillColor: Colors.grey[200], // Grey background
                border: InputBorder.none, // Removes all borders
                enabledBorder: InputBorder.none, // Removes border when enabled
                focusedBorder: InputBorder.none, // Removes border when focused
                errorBorder:
                    InputBorder.none, // Removes border when there's an error
                focusedErrorBorder: InputBorder.none,
              ),
              hint: Text(
                'To',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.9), // Change opacity here
                ),
              ),
              isExpanded: true,
              items: cities
                  .map(
                    (city) => DropdownMenuItem<String>(
                      value: city,
                      child: Text(city),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                toCity = value;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.grey[200], // Same as DropdownButtonFormField
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Same as dropdown
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 12,
                ),
                alignment: Alignment.centerLeft,
              ),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 20)),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectedDate = value;
                    });
                  }
                });
              },
              child: Text(
                selectedDate == null
                    ? 'Select Date'
                    : (selectedDate!.toLocal().toString().split(' ')[0]),
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selected Date: ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  selectedDate == null
                      ? 'No Chosen date'
                      : getformatedDate(
                          selectedDate!,
                          pattern: 'EEE MMM dd,yyyy',
                        ),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Center(
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: _search,
                  child: Text('SEARCH'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _search() {
    if (selectedDate == null) {
      Snackbar(context, 'Please select a departure date');
      return;
    }
    if (_formKey.currentState!.validate()) {
      Provider.of<Appdataprovider>(
        context,
        listen: false,
      ).getRouteByCityFromAndCityTo(fromCity!, toCity!).then((route) {});
    }
  }
}
