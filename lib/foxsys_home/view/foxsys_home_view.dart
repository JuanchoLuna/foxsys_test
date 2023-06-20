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
        floatingActionButton: _FloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class _FloatingButton extends StatelessWidget {
  const _FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print("it's pressed"),
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 2, color: FOXSYSColors.purpleDark),
        backgroundColor: FOXSYSColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: FOXSYSSpacing.lg, vertical: FOXSYSSpacing.s10),
        child: Text(
          '+ Action',
          style: FOXSYSTextStyle.bodyText1.copyWith(
              color: FOXSYSColors.purpleDark, fontWeight: FontWeight.w600),
        ),
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

