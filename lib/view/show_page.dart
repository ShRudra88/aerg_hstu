import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

class ShowPage extends StatefulWidget {
  final DateTime initialDate;
  final DateTime specialOffDate;
  final int selectedLevel;
  final String selectedSemester;
  final bool allowFridayOff;
  final bool allowSaturdayOff;
  final String room;

  const ShowPage({
    Key? key,
    required this.initialDate,
    required this.specialOffDate,
    required this.selectedLevel,
    required this.selectedSemester,
    required this.allowFridayOff,
    required this.allowSaturdayOff,
    required this.room,
  }) : super(key: key);

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  late String _pdfPath;
  late pw.Document _pdf;

  @override
  void initState() {
    super.initState();
    _pdf = pw.Document();
    _createPDF();
  }

  Future<void> _createPDF() async {
    final pw.PageTheme pageTheme = pw.PageTheme(
      pageFormat: pw.PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(40),
    );

    _pdf.addPage(
      pw.Page(
        pageTheme: pageTheme,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('Automated Exam Routine', style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 20),
              pw.Text('Initial Date: ${DateFormat('MM/dd/yyyy').format(widget.initialDate)}'),
              pw.Text('Special Off Date: ${DateFormat('MM/dd/yyyy').format(widget.specialOffDate)}'),
              pw.Text('Level: ${widget.selectedLevel}'),
              pw.Text('Semester: ${widget.selectedSemester}'),
              pw.Text('Allow Friday Off: ${widget.allowFridayOff ? 'Yes' : 'No'}'),
              pw.Text('Allow Saturday Off: ${widget.allowSaturdayOff ? 'Yes' : 'No'}'),
              pw.Text('Room: ${widget.room}'),
            ],
          );
        },
      ),
    );

    final Directory tempDir = await getTemporaryDirectory();
    final String tempPath = tempDir.path;
    final String fileName = 'routine_${DateTime.now().millisecondsSinceEpoch}.pdf';
    final String filePath = '$tempPath/$fileName';
    final File file = File(filePath);
    await file.writeAsBytes(await _pdf.save());

    setState(() {
      _pdfPath = filePath;
    });

    // Uncomment to automatically open the PDF after generation
    // await PdfViewer.openFile(file.path); // Ensure PdfViewer or alternative is correctly defined
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Page'),
      ),
      body: _pdfPath != null
          ? Center(
        child: ElevatedButton(
          onPressed: () async {
            // Example for opening PDF
            // await PdfViewer.openFile(File(_pdfPath).path);
          },
          child: Text('Open PDF'),
        ),
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
