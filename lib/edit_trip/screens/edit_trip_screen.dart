import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_bloc.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_events.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_state.dart';
import 'package:flutter_cool_sample/edit_trip/widgets/route_point_list_item.dart';

class EditTripScreen extends StatefulWidget {
  const EditTripScreen({Key? key}) : super(key: key);

  @override
  State<EditTripScreen> createState() => _EditTripScreenState();
}

class _EditTripScreenState extends State<EditTripScreen> {
  late EditTripBloc _controller;

  @override
  void initState() {
    super.initState();
    _controller = context.read<EditTripBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              bool res = await _controller.removeTrip();
              if (res) {
                Navigator.pop(this.context);
              } else {
                //TODO: show an error
              }
            },
            icon: const Icon(
              Icons.delete_forever,
            ),
          ),
        ],
      ),
      body: BlocBuilder<EditTripBloc, EditTripState>(
          bloc: _controller,
          builder: (context, tripState) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Flexible(
                        flex: 4,
                        child: Container(color: Colors.blue),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.green),
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Container(
                          color: Colors.yellow,
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: tripState.trip?.routePoints
                                            .map(
                                              (routePoint) =>
                                                  RoutePointListItem(
                                                tripState.trip!.routePoints
                                                    .indexOf(routePoint),
                                                routePoint,
                                                () => print(routePoint.id),
                                              ),
                                            )
                                            .toList() ??
                                        [
                                          Container(),
                                        ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.add_box_rounded,
                                        color: Colors.red,
                                        size: 32,
                                      ),
                                      onPressed: () {
                                        //TODO:
                                      },
                                    ),
                                    const Text('Add target location') // TODO: add localized string
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
