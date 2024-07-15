import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

class ShowPage extends StatelessWidget {
  final DateTime initialDate;
  final DateTime specialOffDate;
  final int selectedLevel;
  final String selectedSemester;
  final bool allowFridayOff;
  final bool allowSaturdayOff;
  final String room;

  ShowPage({
    required this.initialDate,
    required this.specialOffDate,
    required this.selectedLevel,
    required this.selectedSemester,
    required this.allowFridayOff,
    required this.allowSaturdayOff,
    required this.room,
  });

  Future<void> _generatePDF(BuildContext context) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('Automated Exam Routine Generator (AERG)',
                  style: pw.TextStyle(
                      fontSize: 24, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 20),
              pw.Text('Faculty: CSE'),
              pw.Text(
                  'Name of the examination: B.Sc (Engineering) in CSE Level $selectedLevel Semester $selectedSemester'),
              pw.Text(
                  'Center: Dr. Muhammad Qudrat-i-Khuda Academic Building, HSTU'),
              pw.Text('Time: 9:30 AM'),
              pw.Text('Room: $room'),
              pw.SizedBox(height: 20),
              pw.Table.fromTextArray(
                headers: ['DATE', 'DAY', 'COURSE'],
                data: [
                  [
                    DateFormat('dd-MM-yyyy').format(initialDate),
                    DateFormat('EEEE').format(initialDate),
                    'CSE 151'
                  ],
                  [
                    DateFormat('dd-MM-yyyy')
                        .format(initialDate.add(const Duration(days: 4))),
                    DateFormat('EEEE')
                        .format(initialDate.add(const Duration(days: 4))),
                    'CSE 153'
                  ],
                  [
                    DateFormat('dd-MM-yyyy')
                        .format(initialDate.add(const Duration(days: 8))),
                    DateFormat('EEEE')
                        .format(initialDate.add(const Duration(days: 8))),
                    'EEE 155'
                  ],
                  [
                    DateFormat('dd-MM-yyyy')
                        .format(initialDate.add(const Duration(days: 12))),
                    DateFormat('EEEE')
                        .format(initialDate.add(const Duration(days: 12))),
                    'MAT 105'
                  ],
                  [
                    DateFormat('dd-MM-yyyy')
                        .format(initialDate.add(const Duration(days: 15))),
                    DateFormat('EEEE')
                        .format(initialDate.add(const Duration(days: 15))),
                    'SOC 103'
                  ],
                ],
              ),
            ],
          );
        },
      ),
    );

    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/routine.pdf');
    await file.writeAsBytes(await pdf.save());

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('PDF Saved at ${file.path}')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam Routine'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _generatePDF(context),
          child: const Text('Generate PDF'),
        ),
      ),
    );
  }
}
