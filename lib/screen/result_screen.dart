import 'dart:math';

import 'package:bloc_conceps/bloc/bloc/counter_bloc.dart';
import 'package:bloc_conceps/bloc/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/newCounter/bloc/new_counter_bloc.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 350,
          ),
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  state.counter.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              );
            },
          ),
          SizedBox(
            height: 100,
          ),
          BlocBuilder<NewCounterBloc, NewCounterState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  state.counter.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
