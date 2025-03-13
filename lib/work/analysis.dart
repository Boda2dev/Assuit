import 'package:flutter/material.dart';

class DataAnalysis extends StatelessWidget {
  const DataAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('كل شيء عن Data Analysis 🔥📊',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionTitle('🔹 1. أقسام تحليل البيانات الأساسية'),
            sectionContent(
                '📌 أ. جمع البيانات (Data Collection) 📥\nمصادر البيانات: قواعد البيانات، Excel، APIs، أو Big Data.\nأدوات جمع البيانات: SQL, Web Scraping, Google Analytics.'),
            sectionContent(
                '📌 ب. تنظيف البيانات (Data Cleaning) 🧹\nإزالة القيم المفقودة أو غير الصحيحة.\nتحويل البيانات إلى تنسيق قابل للتحليل.\nاستخدام Pandas و NumPy في Python.'),
            sectionContent(
                '📌 ج. تحليل البيانات (Exploratory Data Analysis - EDA) 📊\nاستخدام الإحصائيات لفهم الأنماط والعلاقات بين البيانات.\nتحليل الاتجاهات والارتباطات باستخدام Matplotlib و Seaborn.\nاستخراج Insights تساعد في اتخاذ القرار.'),
            sectionContent(
                '📌 د. عرض البيانات والتصورات (Data Visualization) 🎨\nإنشاء رسوم بيانية، مخططات تفاعلية، Dashboards.\nاستخدام Tableau, Power BI, Plotly لتوضيح النتائج.'),
            sectionContent(
                '📌 هـ. بناء التقارير واتخاذ القرار (Reporting & Decision Making) 📑\nتحويل البيانات إلى تقارير واضحة وسهلة الفهم.\nاستخدام Excel, Power BI, Tableau لتقديم التحليل.'),
            const SizedBox(height: 20),
            sectionTitle(
                '🔹 2. الفرق بين Data Analysis و Data Science و Business Intelligence'),
            buildComparisonTable(),
            const SizedBox(height: 20),
            sectionTitle('🔹 3. الأدوات واللغات المستخدمة في Data Analysis'),
            sectionContent(
                '📌 لغات البرمجة الأساسية\n✅ Python – مكتبة Pandas و NumPy لتحليل البيانات.\n✅ SQL – لاستخراج البيانات من قواعد البيانات.\n✅ R – قوي جدًا في التحليل الإحصائي.'),
            sectionContent(
                '📌 أدوات تحليل البيانات (Data Processing & Analysis)\n✅ Pandas, NumPy – تحليل البيانات وتنظيفها.\n✅ Matplotlib, Seaborn – لإنشاء رسوم بيانية.\n✅ Excel – لا يزال مستخدمًا في الشركات.'),
            sectionContent(
                '📌 أدوات عرض البيانات (Data Visualization & Reporting)\n✅ Power BI, Tableau – أدوات احترافية لإنشاء Dashboards.\n✅ Google Data Studio – أداة مجانية من Google.'),
            const SizedBox(height: 20),
            sectionTitle('🔹 4. اللغات والتقنيات المطلوبة في مصر وخارجها'),
            sectionContent(
                '📌 في مصر والدول العربية\n✅ Excel & SQL – أساسيات لا غنى عنها.\n✅ Power BI, Tableau – أدوات تقارير احترافية.\n✅ Python (Pandas & NumPy) – تحليل متقدم للبيانات.'),
            sectionContent(
                '📌 في أوروبا وأمريكا والخليج\n✅ SQL, Python, R – مطلوبين عالميًا.\n✅ Cloud Platforms (AWS, GCP, Azure) – لتحليل البيانات السحابية.\n✅ Big Data & AI Analytics – تحليل البيانات الضخمة باستخدام Spark.'),
            const SizedBox(height: 20),
            sectionTitle('🔹 5. أفضل المنصات لتعلم Data Analysis'),
            sectionContent(
                '📌 منصات مجانية\n🔥 Google Data Analytics (Coursera) – كورس مجاني قوي من Google.\n🔥 Kaggle – منصة بها تحديات وتحليل بيانات عملي.\n🔥 freeCodeCamp – دورة مجانية شاملة عن تحليل البيانات.'),
            sectionContent(
                '💰 منصات مدفوعة\n💎 Udemy – كورسات بأسعار مناسبة وعروض دائمة.\n💎 Coursera – شهادات معتمدة من Google وIBM.\n💎 Pluralsight – قوي لمستوى متقدم في البيانات.'),
            const SizedBox(height: 20),
            sectionTitle('🔹 6. كيف تصبح محترفًا في Data Analysis؟'),
            sectionContent(
                '1️⃣ ابدأ بتعلم Excel & SQL.\n2️⃣ ادرس Python و Pandas لتحليل البيانات.\n3️⃣ تعلم الإحصاء والرياضيات لفهم البيانات.\n4️⃣ جرب بناء Dashboards باستخدام Power BI أو Tableau.\n5️⃣ ادخل في تحديات Kaggle لاكتساب الخبرة العملية.\n6️⃣ اتعلم كيفية تقديم التقارير واتخاذ القرارات بناءً على البيانات.'),
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
        2: FractionColumnWidth(0.4)
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
                        color: Colors.white, fontWeight: FontWeight.bold))),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Data Science',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Data Analysis',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          ],
        ),
        TableRow(children: [
          Padding(padding: EdgeInsets.all(8.0), child: Text('الهدف')),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('استخدام ML & AI لتوقعات ذكية')),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('تحليل البيانات لاستخراج Insights')),
        ]),
      ],
    );
  }
}
