import 'package:campus_mobile_experimental/core/services/availability_service.dart';
import 'package:campus_mobile_experimental/core/services/bottom_navigation_bar_service.dart';
import 'package:campus_mobile_experimental/core/services/event_service.dart';
import 'package:campus_mobile_experimental/core/services/location_service.dart';
import 'package:campus_mobile_experimental/core/models/coordinates_model.dart';
import 'package:provider/provider.dart';

List<SingleChildCloneableWidget> providers = [
  ChangeNotifierProvider<BottomNavigationBarProvider>(
    builder: (_) => BottomNavigationBarProvider(),
  ),
  ChangeNotifierProvider<AvailabilityService>(
    builder: (_) => AvailabilityService(),
  ),
  ChangeNotifierProvider<EventsService>(
    builder: (_) => EventsService(),
  ),
  StreamProvider<Coordinates>(
    builder: (_) => LocationService().locationStream,
  ),
];
