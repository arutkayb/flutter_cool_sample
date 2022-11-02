import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/common/models/trip.dart';
import 'package:flutter_cool_sample/home/blocs/trip_list_bloc.dart';
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
    context.read<TripListBloc>().add(RetrieveTripsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: BlocBuilder<TripListBloc, List<Trip>>(
                  builder: (context, trips) {
                    return Column(
                      children: trips
                          .map(
                        // TODO:
                            (e) => TripListItem(
                              e.name,
                              e.routePoints.first.routeStartDateMillis
                                  .toString(),
                              () => print(e.name),
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
}
