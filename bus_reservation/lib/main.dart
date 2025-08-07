import 'package:bus_reservation/providers/AppDataProvider.dart';
import 'package:bus_reservation/screens/search_page.dart';
import 'package:bus_reservation/screens/search_page_results.dart';
import 'package:bus_reservation/theme.dart';
import 'package:bus_reservation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Appdataprovider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      
      darkTheme: AppTheme.darkTheme,
      home: SearchPage(),
      routes: {
        routeNameHome:(context ) => SearchPage(),
        routeNameSearchResultPage: (context) => const SearchPageResults(),
      },
    );
  }
}
