
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foxsys_test/foxsys_home/foxsys_home.dart';
import 'package:foxsys_ui/foxsys_ui.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final optionSelected =
        context.select((FoxsysHomeBloc bloc) => bloc.state.optionSelected);

    return getFloatingButtonOnStepSelected(optionSelected);
  }
}

Widget getFloatingButtonOnStepSelected(int selectedValue) {
  Widget createButton(String text, void Function() onPressed, [Widget? icon]) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 2, color: FOXSYSColors.purple),
        backgroundColor: FOXSYSColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: FOXSYSSpacing.lg,
          vertical: FOXSYSSpacing.s10,
        ),
        child: icon != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  icon,
                  const SizedBox(width: 6),
                  Text(
                    text,
                    style: FOXSYSTextStyle.bodyText1.copyWith(
                      color: FOXSYSColors.purple,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: FOXSYSTextStyle.bodyText1.copyWith(
                  color: FOXSYSColors.purple,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }

  switch (selectedValue) {
    case 0:
      return createButton(
          'Activar Codigo de Inicio', () {}, FoxsysUIImages.bagCheck());
    case 1:
      return createButton('+ Nuevo Acceso', () {});
    case 2:
      return const SizedBox();
    case 3:
      return createButton('+ Nueva Solicitud', () {});
    case 4:
      return createButton('+ Notificar', () {});
    default:
      return createButton('+ Action', () {});
  }
}
