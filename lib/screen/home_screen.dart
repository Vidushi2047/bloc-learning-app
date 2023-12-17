import 'dart:math';

import 'package:bloc_conceps/bloc/bloc/counter_bloc.dart';
import 'package:bloc_conceps/screen/result_screen.dart';
import 'package:bloc_conceps/screen/theme_change_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/newCounter/bloc/new_counter_bloc.dart';
import '../bloc/theme/bloc/theme_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return const ThemeChange();
                //   },
                // ));
              },
              icon: const Icon(Icons.change_circle))
        ],
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (_) {
                //     return BlocProvider.value(                       //named Routing
                //       value: context.read<CounterBloc>(),
                //       child: const ResultScreen(),
                //     );
                //   },
                // ));
                Navigator.pushNamed(context, '/next1');
              },
              child: const Text('Next Page')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementCounterEvent());
                },
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementCounterEvent());
                },
                icon: const Icon(Icons.remove),
              )
            ],
          ),
        ],
      )),
    );
  }
}
