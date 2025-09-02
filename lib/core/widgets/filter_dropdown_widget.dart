import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['Community', 'User'];

class FilterDropdownWidget extends StatefulWidget {
  const FilterDropdownWidget({super.key});

  @override
  State<FilterDropdownWidget> createState() => _FilterDropdownWidgetState();
}

typedef MenuEntry = DropdownMenuEntry<String>;

class _FilterDropdownWidgetState extends State<FilterDropdownWidget> {
  static final List<MenuEntry> menuEntries = UnmodifiableListView<MenuEntry>(
    list.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final dropdownHeight = 36.0;
        final fontSize = 14.0;
        final horizontalPadding = 16.0;
        final verticalPadding = 6.0;
        final borderRadius = 8.0;
        final iconSize = 16.0;

        return SizedBox(
          width: double.infinity,
          height: dropdownHeight,
          child: DropdownMenu<String>(
            width:
                constraints.maxWidth, 
            trailingIcon: Icon(
              Icons.keyboard_arrow_down,
              size: iconSize,
              color: Colors.grey[600],
            ),
            selectedTrailingIcon: Icon(
              Icons.keyboard_arrow_up,
              size: iconSize,
              color: Colors.grey[600],
            ),
            menuStyle: MenuStyle(
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shadowColor: WidgetStateProperty.all(
                Colors.black.withOpacity(0.15),
              ),
              elevation: WidgetStateProperty.all(4.0),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              padding: WidgetStateProperty.all(
                EdgeInsets.symmetric(
                  horizontal: horizontalPadding * 0.75,
                  vertical: verticalPadding,
                ),
              ),
              maximumSize: WidgetStateProperty.all(
                Size(constraints.maxWidth, 200),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                borderSide: BorderSide.none,
              ),
              isDense: true,
              constraints: BoxConstraints(
                maxHeight: dropdownHeight,
                minHeight: dropdownHeight,
              ),
            ),
            textStyle: TextStyle(
              fontSize: fontSize,
              height: 1.2,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
            initialSelection: list.first,
            onSelected: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            dropdownMenuEntries:
                menuEntries.map((entry) {
                  return DropdownMenuEntry<String>(
                    value: entry.value,
                    label: entry.label,
                    style: MenuItemButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.black,
                      textStyle: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.normal,
                        height: 1.2,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding * 0.75,
                        vertical: verticalPadding,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          borderRadius * 0.75,
                        ),
                      ),
                      minimumSize: Size(0, dropdownHeight * 0.9),
                    ),
                  );
                }).toList(),
          ),
        );
      },
    );
  }
}
