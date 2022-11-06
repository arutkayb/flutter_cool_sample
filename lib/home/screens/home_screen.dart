import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_bloc.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_state.dart';
import 'package:flutter_cool_sample/edit_trip/screens/edit_trip_screen.dart';
import 'package:flutter_cool_sample/home/controllers/trip_list_cubit.dart';
import 'package:flutter_cool_sample/home/widgets/trip_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  late TripListCubit _controller;

  @override
  void initState() {
    super.initState();
    _controller = context.read<TripListCubit>();
    _controller.fetchTrips();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: BlocBuilder<TripListCubit, List<Trip>?>(
                  builder: (context, trips) {
                    return trips != null
                        ? Column(
                            children: trips
                                .map(
                                  (trip) => TripListItem(
                                    trip.name,
                                    trip.routePoints.first.routeStartDateMillis
                                        .toString(),
                                    () async {
                                      final res =
                                          await pushEditTripScreen(trip);
                                      if (res != null && res) {
                                        _controller.fetchTrips();
                                      }
                                    },
                                    key: UniqueKey(),
                                  ),
                                )
                                .toList(),
                          )
                        : Container();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Future<dynamic> pushEditTripScreen(Trip trip) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (BuildContext context) => EditTripBloc(
            EditTripState(trip),
          ),
          child: const EditTripScreen(),
        ),
      ),
    );
  }
}
