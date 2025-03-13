// ignore: file_names
import 'package:cs_ai/SE/Data%20strcuer/datastrcuer.dart';
import 'package:cs_ai/SE/analysis/home.dart';
import 'package:cs_ai/SE/computer%20archer/home.dart';
import 'package:cs_ai/SE/computer/Home.dart';
import 'package:cs_ai/SE/database/pdf-data.dart';
import 'package:cs_ai/SE/maths/math3.dart';
import 'package:cs_ai/SE/probilty/homee.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pdf_IS extends StatefulWidget {
  const Pdf_IS({super.key});

  @override
  State<Pdf_IS> createState() => _MatrialState();
}

class _MatrialState extends State<Pdf_IS> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/back.webp',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => data_strcuter()),
                  );
                },
                icon: Icon(Icons.book, color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Data Structures",
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => database()),
                  );
                },
                icon: Icon(Icons.book, color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Database",
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => math3_Home()),
                  );
                },
                icon: Icon(Icons.book, color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Math3",
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => computer()),
                  );
                },
                icon: Icon(Icons.book, color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "Computer and Ethics",
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Analaysis()),
                  );
                },
                icon: Icon(Icons.book, color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "System analysis and Design",
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => probilty()),
                  );
                },
                icon: Icon(Icons.book, color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "probability and Static",
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => computerss()),
                  );
                },
                icon: Icon(Icons.book, color: Color.fromARGB(255, 250, 2, 2)),
                label: Text(
                  "computer architecture",
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
