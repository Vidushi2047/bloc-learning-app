import 'package:bloc_conceps/bloc/bloc/counter_bloc.dart';
import 'package:bloc_conceps/screen/result_screen.dart';
import 'package:bloc_conceps/screen/theme_change_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/counter');
              },
              child: const Text('Result Page'))),
    );
  }
}
