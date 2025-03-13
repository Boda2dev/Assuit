import 'package:flutter/material.dart';

class Backend extends StatelessWidget {
  const Backend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('كل ما تحتاج معرفته عن الـ Back-End',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('ما هو الـ Back-End؟'),
            _buildParagraph(
                'الـ Back-End هو الجزء اللي بيشتغل على السيرفر، وبيكون مسؤول عن معالجة البيانات، إدارة قواعد البيانات، والتحكم في الـ APIs اللي بتتواصل مع الـ Front-End.'),
            _buildSectionTitle('مكونات الـ Back-End'),
            _buildBulletPoint(
                'السيرفر (Server): المكان اللي بيستضيف الكود ويستقبل الطلبات من المستخدمين.'),
            _buildBulletPoint(
                'قواعد البيانات (Database): تخزين البيانات بشكل منظم لاسترجاعها بكفاءة.'),
            _buildBulletPoint(
                'APIs: بوابات التواصل بين الـ Front-End والـ Back-End.'),
            _buildBulletPoint(
                'الأمان (Security): المصادقة (Authentication) والتصاريح (Authorization).'),
            _buildSectionTitle('أهم اللغات المطلوبة في مصر والعالم'),
            _buildSubTitle('في مصر:'),
            _buildBulletPoint(
                'PHP + Laravel - شائع في الشركات المتوسطة والصغيرة.'),
            _buildBulletPoint(
                'Node.js (Express.js, NestJS) - مناسب للشركات الناشئة.'),
            _buildBulletPoint(
                'Python (Django, Flask) - مستخدم في تحليل البيانات.'),
            _buildBulletPoint(
                '.NET (C# + ASP.NET Core) - مطلوب في الشركات الكبيرة والبنوك.'),
            _buildBulletPoint('Java (Spring Boot) - أقل انتشارًا ولكنه قوي.'),
            _buildSubTitle('عالميًا:'),
            _buildBulletPoint(
                'Java (Spring Boot) - مستخدم في المؤسسات الكبرى.'),
            _buildBulletPoint(
                'Node.js (Express, NestJS, Fastify) - منتشر في الشركات الناشئة.'),
            _buildBulletPoint(
                'Python (Django, FastAPI, Flask) - مهم جدًا للـ AI والـ Data Science.'),
            _buildSectionTitle('أهم المنصات اللي بتوفر كورسات Back-End'),
            _buildSubTitle('مجانية:'),
            _buildBulletPoint('freeCodeCamp - مسارات كاملة للـ Back-End.'),
            _buildBulletPoint('CS50 (Harvard) - كورس مجاني قوي.'),
            _buildBulletPoint('The Odin Project - مسار تعليمي شامل.'),
            _buildSubTitle('مدفوعة:'),
            _buildBulletPoint('Udemy - كورسات متميزة بأسعار مناسبة.'),
            _buildBulletPoint('Coursera - كورسات أكاديمية بشهادات معتمدة.'),
            _buildSectionTitle('كيف تصبح محترف Back-End؟'),
            _buildBulletPoint(
                'تعلم لغة برمجة قوية: JavaScript (Node.js)، Python، C#، Java.'),
            _buildBulletPoint('تعلم قواعد البيانات: SQL و NoSQL.'),
            _buildBulletPoint('تعلم بناء APIs: REST و GraphQL.'),
            _buildBulletPoint('تعلم الأمان: JWT، OAuth، Hashing passwords.'),
            _buildBulletPoint(
                'العمل على مشاريع حقيقية: بناء نظام تسجيل دخول أو متجر إلكتروني بسيط.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget _buildSubTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style:
            const TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ',
              style: TextStyle(fontSize: 18, color: Colors.deepPurple)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 16, color: Colors.black87, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
