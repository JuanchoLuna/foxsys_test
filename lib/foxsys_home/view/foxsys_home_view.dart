import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foxsys_test/foxsys_home/foxsys_home.dart';
import 'package:foxsys_ui/foxsys_ui.dart';

class FoxsysHomeView extends StatelessWidget {
  const FoxsysHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FoxsysHomeBloc, FoxsysHomeState>(
      listener: (context, state) {
        if (state.status == FoxsysHomeStatus.error) {
          // Handle Error
          Navigator.of(context).pop();
        }
      },
      child: const Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: CustomAppBar(),
        body: _FoxsysHomeForm(),
        bottomNavigationBar: FoxsysBottomNavigatorBar(),
        floatingActionButton: FloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class _FoxsysHomeForm extends StatelessWidget {
  const _FoxsysHomeForm();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(gradient: FOXSYSColors.purpleBrightGradient),
    );
  }
}
