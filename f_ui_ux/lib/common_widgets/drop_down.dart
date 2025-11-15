import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:chips_choice/chips_choice.dart';



class AllDropdowns extends StatefulWidget {
  const AllDropdowns({super.key});

  @override
  State<AllDropdowns> createState() => _AllDropdownsState();
}

class _AllDropdownsState extends State<AllDropdowns> {
  String dropdownValue = "India";
  String menuValue = "USA";
  String formValue = "";
  String selectedMenu = "Edit";

  List<String> countries = ["India", "USA", "Canada", "Japan", "UK"];

  // Multi-select
  List<String> frameworks = ["Flutter", "React", "Angular", "Vue"];
  List<String> selectedFrameworks = [];

  // Choice chips multi select
  List<String> hobbies = ["Music", "Cricket", "Travel", "Coding"];
  List<String> selectedHobbies = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Dropdown Types in Flutter")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // DropdownButton
            const Text("1. DropdownButton"),
            DropdownButton(
              value: dropdownValue,
              isExpanded: true,
              elevation: 8,
              icon: const Icon(Icons.arrow_drop_down),
              borderRadius: BorderRadius.circular(12),
              dropdownColor: Colors.grey[200],
              style: const TextStyle(fontSize: 18, color: Colors.black),
              underline: Container(height: 2, color: Colors.blue),
              hint: const Text("Select Country"),
              items: countries.map((item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
              onChanged: (value) => setState(() => dropdownValue = value!),
            ),
            const Divider(),

            // DropdownButtonFormField
            const Text("2. DropdownButtonFormField (with validation)"),
            DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: "Select Country",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              value: null,
              validator: (value) => value == null ? "Required field" : null,
              items: countries.map((item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
              onChanged: (value) => formValue = value!,
            ),
            const Divider(),

            // DropdownMenu (Material 3)
            const Text("3. DropdownMenu (Material 3 style)"),
            DropdownMenu(
              initialSelection: "Japan",
              dropdownMenuEntries: countries.map((e) =>
                  DropdownMenuEntry(value: e, label: e)
              ).toList(),
              width: 300,
              onSelected: (value) => setState(() => menuValue = value!),
            ),
            const Divider(),

            // PopupMenuButton
            const Text("4. PopupMenuButton"),
            PopupMenuButton(
              elevation: 8,
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onSelected: (value) => setState(() => selectedMenu = value.toString()),
              itemBuilder: (context) => [
                const PopupMenuItem(value: "Edit", child: Text("Edit")),
                const PopupMenuItem(value: "Delete", child: Text("Delete")),
                const PopupMenuItem(value: "Share", child: Text("Share")),
              ],
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: const Text("Open Actions Menu", style: TextStyle(color: Colors.white)),
              ),
            ),
            Text("Selected: $selectedMenu"),
            const Divider(),

            // MultiSelectDialogField
            const Text("5. MultiSelectDialogField (Checkbox dialog)"),
            MultiSelectDialogField(
              items: frameworks.map((e)=> MultiSelectItem(e, e)).toList(),
              title: const Text("Select Framework"),
              buttonText: const Text("Choose"),
              searchable: true,
              listType: MultiSelectListType.LIST,
              onConfirm:(values)=> setState(() => selectedFrameworks = values),
            ),
            Text("Selected: $selectedFrameworks"),
            const Divider(),

            // DropdownSearch
            const Text("6. DropdownSearch (Search + Multi)"),
            DropdownSearch<String>.multiSelection(
              items: countries,
              popupProps: const PopupPropsMultiSelection.menu(showSearchBox: true),
              onChanged: print,
              selectedItems: const ["India"],
            ),
            const Divider(),

            // ChipsChoice (Multi Select Chips)
            const Text("7. ChipsChoice (Chips multi select)"),
            ChipsChoice.multiple(
              value: selectedHobbies,
              onChanged: (val) => setState(() => selectedHobbies = val),
              choiceItems: C2Choice.listFrom(
                source: hobbies,
                value: (i, v) => v,
                label: (i, v) => v,
              ),
            ),
            Text("Selected: $selectedHobbies"),
          ],
        ),
      ),
    );
  }
}
