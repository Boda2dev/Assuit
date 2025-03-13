import 'package:flutter/material.dart';

class Front extends StatelessWidget {
  const Front({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('كل ما تحتاج معرفته عن الـ Back-End و الـ Front-End'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('ما هو الـ Back-End؟'),
            _buildText(
                'الـ Back-End هو الجزء اللي بيشتغل على السيرفر، وبيكون مسؤول عن معالجة البيانات، إدارة قواعد البيانات، والتحكم في الـ APIs اللي بتتواصل مع الـ Front-End.'),
            _buildSectionTitle('مكونات الـ Back-End في الويب:'),
            _buildBulletPoints([
              'السيرفر (Server): هو المكان اللي بيستضيف الكود ويستقبل الطلبات من المستخدمين.',
              'قواعد البيانات (Database): تخزين البيانات بشكل منظم علشان يتم استرجاعها بسرعة وكفاءة.',
              'APIs: بوابات التواصل بين الـ Front-End والـ Back-End.',
              'الأمان (Security): التعامل مع المصادقة (Authentication) والتصاريح (Authorization).'
            ]),
            _buildSectionTitle('ما هو الـ Front-End؟'),
            _buildText(
                'الـ Front-End هو الجزء اللي بيتفاعل مع المستخدم مباشرةً في أي موقع أو تطبيق. هو اللي بيحدد الشكل العام، الألوان، التصميم، والتفاعل.'),
            _buildSectionTitle('الفرق بين الـ Front-End والـ Back-End:'),
            _buildComparisonTable(),
            _buildSectionTitle('كيف تصبح محترفًا في الـ Front-End؟'),
            _buildBulletPoints([
              'ابدأ بتعلم HTML, CSS, JavaScript بعمق.',
              'طبق مشاريع حقيقية مثل صفحات تسجيل الدخول ولوحات التحكم.',
              'اتعلم React أو Vue حسب السوق اللي مستهدفه.',
              'اتعلم TypeScript لكتابة كود احترافي.',
              'اتعلم Git و GitHub لإدارة مشاريعك.',
              'شارك في مشاريع مفتوحة المصدر لزيادة خبرتك.',
              'حسن مهاراتك في UI/UX علشان تميز شغلك.'
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }

  Widget _buildText(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        content,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildBulletPoints(List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points
          .map((point) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check, color: Colors.green),
                    const SizedBox(width: 8),
                    Expanded(
                        child:
                            Text(point, style: const TextStyle(fontSize: 18))),
                  ],
                ),
              ))
          .toList(),
    );
  }

  Widget _buildComparisonTable() {
    return Table(
      border: TableBorder.all(color: Colors.black),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1),
      },
      children: const [
        TableRow(children: [
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('الميزة',
                      style: TextStyle(fontWeight: FontWeight.bold)))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Front-End',
                      style: TextStyle(fontWeight: FontWeight.bold)))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Back-End',
                      style: TextStyle(fontWeight: FontWeight.bold)))),
        ]),
        TableRow(children: [
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0), child: Text('الوظيفة'))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('إنشاء واجهة المستخدم'))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('إدارة البيانات والخوادم'))),
        ]),
        TableRow(children: [
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('اللغات الأساسية'))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('HTML, CSS, JavaScript'))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Python, Node.js, Java, PHP'))),
        ]),
        TableRow(children: [
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0), child: Text('إطارات العمل'))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('React, Vue, Angular'))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Express, Django, Spring Boot'))),
        ]),
        TableRow(children: [
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0), child: Text('التعامل'))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('مباشر مع المستخدم'))),
          TableCell(
              child: Padding(
                  padding: EdgeInsets.all(8.0), child: Text('خلف الكواليس'))),
        ]),
      ],
    );
  }
}
