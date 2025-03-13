import 'package:flutter/material.dart';

class Full extends StatelessWidget {
  const Full({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Full Stack Development",
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSectionTitle("ما هو Full Stack Developer؟ 🚀"),
            buildParagraph(
                "هو المبرمج الذي يعمل على كل من الواجهة الأمامية (Front-End) والواجهة الخلفية (Back-End) مما يعني أنه مسؤول عن بناء التطبيقات بشكل كامل."),
            buildSectionTitle("🔹 1. أقسام Full Stack Development"),
            buildSubsection("📌 أ. الـ Front-End 🎨"),
            buildParagraph(
                "هو الجزء الذي يتفاعل معه المستخدم مباشرةً، مثل التصميم، الأزرار، الألوان."),
            buildBulletPoints([
              "HTML – هيكلة الصفحات.",
              "CSS – تنسيق وتصميم الواجهة.",
              "JavaScript – إضافة التفاعل والحركات."
            ]),
            buildSubsection("✅ أشهر المكتبات والإطارات:"),
            buildBulletPoints([
              "React.js ⚛️ – الأكثر استخدامًا حاليًا.",
              "Vue.js 🟢 – إطار خفيف وسهل التعلم.",
              "Angular 🔺 – إطار قوي تستخدمه الشركات الكبرى."
            ]),
            buildSubsection("📌 ب. الـ Back-End 🖥️"),
            buildParagraph(
                "هو الجزء المسؤول عن إدارة البيانات، المنطق البرمجي، والأمان."),
            buildBulletPoints([
              "Node.js ⚡ – سريع ويستخدم مع React و Vue.",
              "Python 🐍 – قوي في الذكاء الاصطناعي والـ API.",
              "PHP 🐘 – شائع في مواقع الويب التقليدية.",
              "Ruby on Rails 💎 – قوي في بعض المشاريع الكبيرة.",
              "C# .NET 🏆 – قوي جدًا ومستخدم في المؤسسات الكبرى."
            ]),
            buildSectionTitle("🔹 2. أشهر تقنيات الـ Full Stack"),
            buildSubsection("📌 1️⃣ MERN Stack 🟢"),
            buildParagraph(
                "يتكون من MongoDB - Express - React - Node.js، وهو الأشهر حاليًا."),
            buildSubsection("📌 2️⃣ MEAN Stack 🔺"),
            buildParagraph("نفس الـ MERN لكن يستخدم Angular بدلاً من React."),
            buildSubsection("📌 3️⃣ LAMP Stack 🐘"),
            buildParagraph(
                "يستخدم Linux - Apache - MySQL - PHP، مناسب للمواقع التقليدية."),
            buildSectionTitle("🔹 3. كيف تصبح Full Stack Developer محترف؟"),
            buildBulletPoints([
              "ابدأ بتعلم HTML, CSS, JavaScript.",
              "اختر إطار Front-End مثل React.js أو Vue.js.",
              "تعلم Back-End بلغة مثل Node.js أو Python.",
              "استخدم قواعد بيانات مثل MongoDB أو PostgreSQL.",
              "تعلم DevOps والنشر على الإنترنت.",
              "ابنِ مشاريع عملية وشاركها على GitHub."
            ]),
            buildSectionTitle("🚀 الخلاصة"),
            buildParagraph(
                "Full Stack Developer هو المبرمج الذي يبني التطبيقات بالكامل! تحتاج إلى مهارات في Front-End و Back-End وقواعد البيانات. MERN هو الأكثر طلبًا عالميًا. ابدأ بالتعلم وطبق مشاريع حقيقية! 🎯🔥"),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent),
      ),
    );
  }

  Widget buildSubsection(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );
  }

  Widget buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }

  Widget buildBulletPoints(List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points.map((point) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("• ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              Expanded(
                child: Text(
                  point,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
