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
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownMenu<String>(
        width: double.infinity,
        menuStyle: MenuStyle(
          backgroundColor: WidgetStateProperty.all(Colors.white),
          shadowColor: WidgetStateProperty.all(Colors.black.withOpacity(0.1)),
          padding: WidgetStateProperty.all(EdgeInsets.all(12)),
        ),
        textStyle: TextStyle(fontSize: 14, height: 1.5),
        initialSelection: list.first,
        onSelected: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        dropdownMenuEntries: menuEntries,
      ),
    );
  }
}
