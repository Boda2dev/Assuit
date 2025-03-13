// ignore: file_names

import 'package:cs_ai/information.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Lock_Page extends StatelessWidget {
  const Lock_Page(this.Matrial_pages, {super.key});

  // ignore: non_constant_identifier_names
  final void Function() Matrial_pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double imageSize = constraints.maxWidth * 0.5;
          if (constraints.maxWidth > 600) {
            imageSize = constraints.maxWidth * 0.4;
          }
          double buttonWidth = constraints.maxWidth * 0.4;
          double buttonHeight = 60;
          double fontSize = 18;

          return Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: imageSize,
                      height: imageSize * 1,
                      child: Image.asset(
                        'assets/images/SE.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: buttonWidth,
                      height: buttonHeight,
                      child: ElevatedButton.icon(
                        onPressed: Matrial_pages,
                        label: Text(
                          'Material',
                          style: TextStyle(fontSize: fontSize),
                        ),
                        icon: const Icon(Icons.book, size: 24),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: buttonWidth,
                      height: buttonHeight,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Information_page(),
                            ),
                          );
                        },
                        label: Text(
                          'سوق العمل',
                          style: TextStyle(fontSize: fontSize),
                        ),
                        icon: const Icon(Icons.work_history_outlined, size: 24),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/WhatsApp Image 2025-03-05 at 16.55.10_56b60443.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/WhatsApp Image 2025-03-06 at 17.23.09_030e11ff.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/WhatsApp Image 2025-03-05 at 16.55.10_314ff570.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/WhatsApp Image 2025-03-05 at 16.55.09_362fb017.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
