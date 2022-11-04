import 'package:flutter/material.dart';
import 'package:flutter_cool_sample/common/configs/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cool_sample/home/controllers/trip_list_cubit.dart';
import 'package:flutter_cool_sample/home/screens/home_screen.dart';
import 'package:flutter_cool_sample/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map With Weather Forecast',
      theme: AppTheme.lightThemeData,
      // TODO: make the theme configurable between light and dark
      home: BlocProvider(
        create: (BuildContext context) => locator.get<TripListCubit>(),
        child: const HomeScreen(),
      ),
    );
  }
}
