import 'package:bloc_conceps/bloc/bloc/counter_bloc.dart';
import 'package:bloc_conceps/screen/result_screen.dart';
import 'package:bloc_conceps/screen/theme_change_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/newCounter/bloc/new_counter_bloc.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () {
          context.read<NewCounterBloc>().add(DecreseCounterEvent());
        },
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/next2');
              },
              child: const Text('Next Page1'))),
    );
  }
}
