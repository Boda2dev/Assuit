import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class lec_computer extends StatefulWidget {
  const lec_computer({super.key});

  @override
  State<lec_computer> createState() => _lec_computerState();
}

// ignore: camel_case_types
class _lec_computerState extends State<lec_computer> {
  Future<bool> _requestStoragePermission() async {
    if (Platform.isAndroid) {
      var status = await Permission.storage.request();
      return status.isGranted;
    }
    return true;
  }

  Future<String> _getStoragePath(String fileName) async {
    Directory? directory;

    if (Platform.isAndroid) {
      directory = Directory('/storage/emulated/0/Download');
    } else if (Platform.isWindows) {
      directory =
          Directory('${Platform.environment['USERPROFILE']}\\Documents');
    }

    if (directory == null || !directory.existsSync()) {
      throw Exception("مسار التخزين غير متوفر");
    }

    return "${directory.path}/$fileName";
  }

  Future<void> _openPDF(String assetPath, String fileName) async {
    if (await _requestStoragePermission()) {
      try {
        String filePath = await _getStoragePath(fileName);

        final byteData = await rootBundle.load(assetPath);
        final buffer = byteData.buffer;
        await File(filePath).writeAsBytes(
          buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
        );

        final result = await OpenFilex.open(filePath);
        if (result.type != ResultType.done) {
          print("خطأ أثناء فتح PDF: ${result.message}");
        }
      } catch (e) {
        print("خطأ: $e");
      }
    } else {
      print("تم رفض الإذن، لا يمكن حفظ الملف.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/study.webp',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => _openPDF(
                    'assets/pdf/AI/computer/lec/01_Introduction.pdf',
                    '01_Introduction.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "01_Introduction",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 252, 253),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor:
                      Color.fromARGB(255, 39, 118, 230).withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => _openPDF(
                    'assets/pdf/AI/computer/lec/02_Computer Evolution and Performance.pdf',
                    '02_Computer Evolution and Performance.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "02_Computer Evolution and Performance",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 252, 253),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor:
                      Color.fromARGB(255, 39, 118, 230).withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => _openPDF(
                    'assets/pdf/AI/computer/lec/03_Top Level View of Computer Function and Interconnection.pdf',
                    '03_Top Level View of Computer Function and Interconnection.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "03_Top Level View of Computer Function and Interconnection",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 252, 253),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor:
                      Color.fromARGB(255, 39, 118, 230).withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => _openPDF(
                    'assets/pdf/AI/computer/lec/04_Cache Memory.pdf',
                    '04_Cache Memory.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "04_Cache Memory",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 252, 253),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor:
                      Color.fromARGB(255, 39, 118, 230).withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => _openPDF(
                    'assets/pdf/AI/computer/lec/05_Internal Memory.pdf',
                    '05_Internal Memory.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "05_Internal Memory",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 252, 253),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor:
                      Color.fromARGB(255, 39, 118, 230).withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => _openPDF(
                    'assets/pdf/AI/computer/lec/06_Arithmetic.pdf',
                    '06_Arithmetic.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "06_Arithmetic",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 252, 253),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor:
                      Color.fromARGB(255, 39, 118, 230).withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => _openPDF(
                    'assets/pdf/AI/computer/lec/7_Instruction Sets characteristics.pdf',
                    '7_Instruction Sets characteristics.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "7_Instruction Sets characteristics",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 252, 253),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor:
                      Color.fromARGB(255, 39, 118, 230).withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => _openPDF(
                    'assets/pdf/AI/computer/lec/8_ Instruction Sets addressing modes.pdf',
                    '8_ Instruction Sets addressing modes.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "8_ Instruction Sets addressing modes",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 252, 253),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor:
                      Color.fromARGB(255, 39, 118, 230).withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
