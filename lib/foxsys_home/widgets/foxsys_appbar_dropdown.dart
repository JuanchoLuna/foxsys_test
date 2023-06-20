import 'package:flutter/material.dart';
import 'package:foxsys_ui/foxsys_ui.dart';

class FoxsysAppBarDropDown extends StatelessWidget {
  const FoxsysAppBarDropDown({
    required this.items,
    required this.onChanged,
    super.key,
    this.width = 296,
    this.value,
    this.height = 57,
  });

  final List<String> items;
  final double width;
  final double height;
  final void Function(String?) onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: width, maxHeight: height),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: FOXSYSColors.light3,
            width: 1.0,
          ),
        ),
        child: DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: FOXSYSSpacing.lg,
              vertical: FOXSYSSpacing.lg,
            ),
            border: InputBorder.none,
          ),
          value: value,
          menuMaxHeight: 250,
          focusColor: Theme.of(context).colorScheme.background,
          icon: const Icon(Icons.keyboard_arrow_down),
          elevation: 0,
          items: [
            for (final item in items)
              DropdownMenuItem(
                value: item,
                child: Text(
                  item,
                  style: FOXSYSTextStyle.subtitle1,
                ),
              ),
          ],
          onChanged: value != null ? onChanged : null,
        ),
      ),
    );
  }
}
