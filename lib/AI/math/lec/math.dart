import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class lec_math extends StatefulWidget {
  const lec_math({super.key});

  @override
  State<lec_math> createState() => _lec_mathState();
}

// ignore: camel_case_types
class _lec_mathState extends State<lec_math> {
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
                    'assets/pdf/AI/math3/lec/Lecture 1 Dr. Ali سبورات.pdf',
                    'Lecture 1 Dr. Ali سبورات.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Lecture 1 Dr. Ali سبورات",
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
                    'assets/pdf/AI/math3/lec/Lecture 2 dr. Ali سبورات .pdf',
                    'Lecture 2 dr. Ali سبورات .pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Lecture 2 dr. Ali سبورات",
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
                    'assets/pdf/AI/math3/lec/Lecture 2 dr. Hamdi سبورات.pdf',
                    'Lecture 2 dr. Hamdi سبورات.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Lecture 2 dr. Hamdi سبورات",
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
                    'assets/pdf/AI/math3/lec/L3 Dr ali سبورات.pdf',
                    'L3 Dr ali سبورات.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "L3 Dr ali سبورات",
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
                    'assets/pdf/AI/math3/lec/Dr ali L4 سبورات.pdf',
                    'Dr ali L4 سبورات.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Dr ali L4 سبورات",
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
                    'assets/pdf/AI/math3/lec/Dr ali L5 سبورات.pdf',
                    'Dr ali L5 سبورات.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Dr ali L5 سبورات",
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
