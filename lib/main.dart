import 'package:bloc_conceps/bloc/bloc/counter_bloc.dart';
import 'package:bloc_conceps/bloc/bloc/newCounter/bloc/new_counter_bloc.dart';
import 'package:bloc_conceps/bloc/theme/bloc/theme_bloc.dart';
import 'package:bloc_conceps/screen/home_screen.dart';
import 'package:bloc_conceps/screen/home_screen1.dart';
import 'package:bloc_conceps/screen/home_screen2.dart';
import 'package:bloc_conceps/screen/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterBloc _counterBloc = CounterBloc();
  final NewCounterBloc _newCounterBloc = NewCounterBloc();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => NewCounterBloc(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          theme: context.watch<ThemeBloc>().state.appTheme == AppTheme.light
              ? ThemeData.light()
              : ThemeData.dark(),
          routes: {
            '/': (context) => BlocProvider.value(
                  value: _counterBloc,
                  child: const HomeScreen(),
                ),
            '/next1': (context) => BlocProvider.value(
                  value: _newCounterBloc,
                  child: const HomeScreen1(),
                ),

            '/next2': (context) => const HomeScreen2(),
            //named Routing
            '/counter': (context) => MultiBlocProvider(providers: [
                  BlocProvider.value(value: _counterBloc),
                  BlocProvider.value(value: _newCounterBloc),
                ], child: const ResultScreen()),

            // BlocProvider.value(
            //     value: _counterBloc,
            //     child: BlocProvider.value(
            //       value: _newCounterBloc,
            //       child: ResultScreen(),
            //     ))
          },

          // onGenerateRoute: (settings) {
          //   switch (settings.name) {
          //     case '/':
          //       return MaterialPageRoute(
          //         builder: (_) {
          //           return BlocProvider.value(
          //             value: context.read<CounterBloc>(),
          //             child: const HomeScreen(),
          //           );
          //         },
          //       );
          //     case '/counter':
          //       return MaterialPageRoute(
          //         builder: (_) {
          //           return BlocProvider.value(
          //             value: context.read<CounterBloc>(),
          //             child: const ResultScreen(),
          //           );
          //         },
          //       );
          //     default:
          //       return null;
          //   }
          // },
        );
      }),
    );
  }
}
