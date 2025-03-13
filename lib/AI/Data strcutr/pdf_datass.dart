import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class daatstrc extends StatefulWidget {
  const daatstrc({super.key});

  @override
  State<daatstrc> createState() => _daatstrcState();
}

// ignore: camel_case_types
class _daatstrcState extends State<daatstrc> {
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
                    'assets/pdf/AI/datastrc/lec/lec1_t.pdf', 'lec1_t.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "lec1_t",
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
                    'assets/pdf/AI/datastrc/lec/Python_lec1-1.pdf',
                    'Python_lec1-1.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Python_lec1-1",
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
                    'assets/pdf/AI/datastrc/lec/Object-Oriented Programming_lect2.pdf',
                    'Object-Oriented Programming_lect2.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Object-Oriented Programming_lect2",
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
                    'assets/pdf/AI/datastrc/lec/Algorithm Analysis_lect3 (1).pdf',
                    'Algorithm Analysis_lect3 (1).pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Algorithm Analysis_lect3 (1)",
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
                    'assets/pdf/AI/datastrc/lec/Algorithm Analysis_lect3.pdf',
                    'Algorithm Analysis_lect3.pdf'),
                icon: Icon(Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Algorithm Analysis_lect3",
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
