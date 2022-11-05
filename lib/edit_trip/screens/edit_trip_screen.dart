import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/edit_trip/controllers/edit_trip_bloc.dart';

class EditTripScreen extends StatefulWidget {
  const EditTripScreen({Key? key}) : super(key: key);

  @override
  State<EditTripScreen> createState() => _EditTripScreenState();
}

class _EditTripScreenState extends State<EditTripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
