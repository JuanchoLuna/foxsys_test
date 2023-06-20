import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foxsys_test/foxsys_home/foxsys_home.dart';

class FoxsysHomePage extends StatelessWidget {
  const FoxsysHomePage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => FoxsysHomeBloc(),
        child: const FoxsysHomeView(),
      );
}
