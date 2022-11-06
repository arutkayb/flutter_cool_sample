import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_bloc.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_state.dart';
import 'package:flutter_cool_sample/edit_trip/screens/edit_trip_screen.dart';
import 'package:flutter_cool_sample/home/controllers/trip_list_cubit.dart';
import 'package:flutter_cool_sample/home/controllers/trip_list_state.dart';
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
                child: BlocBuilder<TripListCubit, TripListState>(
                  bloc: _controller,
                  builder: (context, state) {
                    return Column(
                      children: state.trips
                          .map(
                            (trip) => TripListItem(
                              trip.name,
                              trip.routePoints.first.routeStartDateMillis
                                  .toString(),
                              () async {
                                await pushEditTripScreen(trip);
                                _controller.fetchTrips();
                              },
                              key: UniqueKey(),
                            ),
                          )
                          .toList(),
                    );
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

  Future pushEditTripScreen(Trip trip) async {
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
