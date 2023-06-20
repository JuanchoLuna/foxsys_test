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
        backgroundColor: FOXSYSColors.white,
        appBar: CustomAppBar(),
        body: _FoxsysHomeForm(),
        //bottomNavigationBar: FoxsysBottomNavigatorBar(),
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

class FoxsysBottomNavigatorBar extends StatelessWidget {
  const FoxsysBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildBottomNavigatorItem(Icons.home, size.width * 0.25),
          buildBottomNavigatorItem(Icons.search, size.width * 0.25),
          buildBottomNavigatorItem(Icons.people, size.width * 0.25),
          buildBottomNavigatorItem(Icons.alarm, size.width * 0.25),
        ],
      ),
    );
  }
}

SizedBox buildBottomNavigatorItem(IconData icon, double size) {
  return SizedBox(
    height: 70,
    width: size,
    child: Icon(
      icon,
      color: FOXSYSColors.blue,
      size: 35,
    ),
  );
}
