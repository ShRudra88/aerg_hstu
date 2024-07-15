import 'package:flutter/material.dart';
import 'package:aerg_hstu/view/show_page.dart';
import 'package:intl/intl.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  DateTime _initialDate = DateTime.now();
  DateTime _specialOffDate = DateTime.now();
  int _selectedLevel = 1;
  String _selectedSemester = 'II';
  bool _allowFridayOff = false;
  bool _allowSaturdayOff = false;
  final TextEditingController _roomController = TextEditingController();

  Future<void> _selectDate(BuildContext context, {bool isInitialDate = true}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isInitialDate ? _initialDate : _specialOffDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != (isInitialDate ? _initialDate : _specialOffDate)) {
      setState(() {
        if (isInitialDate) {
          _initialDate = picked;
        } else {
          _specialOffDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Automated Routine Generator'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create an Automated Routine',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Enter your Initial date'),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () => _selectDate(context),
                    child: InputDecorator(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      child: Text(DateFormat('MM/dd/yyyy').format(_initialDate)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Enter level'),
                  const SizedBox(height: 10),
                  DropdownButton<int>(
                    value: _selectedLevel,
                    isExpanded: true,
                    onChanged: (newValue) {
                      assert(newValue != null);
                      setState(() {
                        _selectedLevel = newValue!;
                      });
                    },
                    items: <int>[1, 2, 3, 4].map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),
                  const Text('Enter Semester'),
                  const SizedBox(height: 10),
                  DropdownButton<String>(
                    value: _selectedSemester,
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedSemester = newValue!;
                      });
                    },
                    items: <String>['I', 'II', 'III', 'IV'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),
                  const Text('Room'),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _roomController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Room',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Enter your special off date'),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () => _selectDate(context, isInitialDate: false),
                    child: InputDecorator(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      child: Text(DateFormat('MM/dd/yyyy').format(_specialOffDate)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowPage(
                            initialDate: _initialDate,
                            specialOffDate: _specialOffDate,
                            selectedLevel: _selectedLevel,
                            selectedSemester: _selectedSemester,
                            allowFridayOff: _allowFridayOff,
                            allowSaturdayOff: _allowSaturdayOff,
                            room: _roomController.text,
                          ),
                        ),
                      );
                    },
                    child: const Text('Generate Routine'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.teal[100],
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Allow the off Day'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        value: _allowFridayOff,
                        onChanged: (value) {
                          setState(() {
                            _allowFridayOff = value!;
                          });
                        },
                      ),
                      const Text('Friday'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _allowSaturdayOff,
                        onChanged: (value) {
                          setState(() {
                            _allowSaturdayOff = value!;
                          });
                        },
                      ),
                      const Text('Saturday'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
