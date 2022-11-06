import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_bloc.dart';
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
      appBar: AppBar(),
      body: Row(
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: _controller.state.trip?.routePoints
                                .map(
                                  (routePoint) => RoutePointListItem(
                                    _controller.state.trip!.routePoints
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
                ),
                Flexible(
                  flex: 2,
                  child: Container(color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
