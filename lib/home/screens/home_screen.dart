import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';
import 'package:flutter_cool_sample/home/controllers/trip_list_cubit.dart';
import 'package:flutter_cool_sample/home/widgets/trip_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TripListCubit>().fetchTrips();
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
                                  // TODO:
                                  (e) => TripListItem(
                                    e.name,
                                    e.routePoints.first.routeStartDateMillis
                                        .toString(),
                                    () => print(e.name),
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
}
