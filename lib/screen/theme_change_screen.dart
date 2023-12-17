// import 'dart:math';

// import 'package:bloc_conceps/bloc/theme/bloc/theme_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ThemeChange extends StatefulWidget {
//   const ThemeChange({super.key});

//   @override
//   State<ThemeChange> createState() => _ThemeChangeState();
// }

// class _ThemeChangeState extends State<ThemeChange> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Theme Change'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               final int randomint = Random().nextInt(10);
//               print(randomint);
//               context
//                   .read<ThemeBloc>()
//                   .add(ChangeThemeEvent(randomint: randomint));
//             },
//             child: const Text('Theme Change')),
//       ),
//     );
//   }
// }
