import 'package:flutter/material.dart';

class DataSciencePage extends StatelessWidget {
  const DataSciencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Science Overview',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionTitle('🔹 1. أقسام الـ Data Science الأساسية'),
            sectionContent(
              '📌 أ. تحليل البيانات (Data Analysis): استخراج معلومات من البيانات وفهمها.\n\n'
              '📌 ب. معالجة البيانات (Data Engineering): تنظيف وتجهيز البيانات قبل التحليل.\n\n'
              '📌 ج. الذكاء الاصطناعي (AI & Machine Learning): بناء نماذج للتنبؤ واتخاذ القرارات.\n\n'
              '📌 د. قواعد البيانات وإدارتها (Databases & Big Data): التعامل مع SQL و NoSQL.',
            ),
            const SizedBox(height: 20),
            sectionTitle(
                '🔹 2. الفرق بين Data Science و Data Analysis و Machine Learning'),
            buildComparisonTable(),
            const SizedBox(height: 20),
            sectionTitle('🔹 3. الأدوات واللغات المستخدمة في الـ Data Science'),
            sectionContent(
              '✅ Python, R, SQL \n\n✅ Pandas, NumPy, Matplotlib \n\n✅ Scikit-learn, TensorFlow, PyTorch',
            ),
            const SizedBox(height: 20),
            sectionTitle('🔹 4. كيف تصبح محترفًا في Data Science؟'),
            sectionContent(
              '1️⃣ تعلم Python و SQL بعمق.\n\n2️⃣ ادرس الإحصاء وتحليل البيانات.\n\n3️⃣ جرب Machine Learning باستخدام Scikit-learn.',
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurple),
    );
  }

  Widget sectionContent(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        text,
        style:
            const TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
      ),
    );
  }

  Widget buildComparisonTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      columnWidths: const {
        0: FractionColumnWidth(0.3),
        1: FractionColumnWidth(0.3),
        2: FractionColumnWidth(0.4),
      },
      children: const [
        TableRow(
          decoration: BoxDecoration(color: Colors.deepPurpleAccent),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('المجال',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Data Science',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Data Analysis',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ],
        ),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('الدور', textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('استخراج معلومات من البيانات',
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('تحليل البيانات لإنشاء تقارير',
                textAlign: TextAlign.center),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('المهارات', textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('برمجة، رياضيات، ML', textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('إحصائيات، Excel، SQL', textAlign: TextAlign.center),
          ),
        ]),
      ],
    );
  }
}
