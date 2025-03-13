import 'package:flutter/material.dart';

class Ai extends StatelessWidget {
  const Ai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الذكاء الاصطناعي"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle("🤯🚀 مقدمة"),
              _buildText(
                  "الذكاء الاصطناعي (AI) هو مجال من علوم الكمبيوتر يهدف إلى إنشاء أنظمة قادرة على التفكير، التعلم، واتخاذ القرارات مثل البشر أو حتى أفضل! يستخدم AI في كل شيء اليوم، من محركات البحث إلى السيارات ذاتية القيادة."),
              _buildSectionTitle("🔹 1. أقسام الذكاء الاصطناعي"),
              _buildSubSection("📌 أ. التعلم الآلي (Machine Learning - ML) 🤖"),
              _buildText(
                  "يسمح للآلات بالتعلم من البيانات واتخاذ قرارات دون الحاجة إلى برمجة صريحة لكل حالة."),
              _buildBulletPoints([
                "Supervised Learning (تعلم تحت الإشراف) 📊",
                "Unsupervised Learning (تعلم غير مُشرف عليه) 🔍",
                "Reinforcement Learning (التعلم بالتعزيز) 🏆",
              ]),
              _buildText("👨‍💻 أشهر المكتبات:"),
              _buildBulletPoints([
                "Scikit-learn – لبناء نماذج ML الأساسية.",
                "TensorFlow & PyTorch – لإنشاء نماذج متقدمة وعميقة.",
              ]),
              _buildSubSection("📌 ب. التعلم العميق (Deep Learning - DL) 🧠"),
              _buildText(
                  "يعتمد على الشبكات العصبية الاصطناعية لمحاكاة عمل الدماغ البشري."),
              _buildBulletPoints([
                "التعرف على الصور (Image Recognition) 🖼️",
                "التعرف على الكلام (Speech Recognition) 🎙️",
                "الرؤية الحاسوبية (Computer Vision) 👀",
                "تحليل النصوص (NLP - Natural Language Processing) 📝",
              ]),
              _buildSectionTitle("🔹 2. أهم لغات البرمجة المستخدمة"),
              _buildBulletPoints([
                "✅ Python – الأكثر استخدامًا.",
                "✅ R – قوي في تحليل البيانات.",
                "✅ C++ – يُستخدم في تطوير الألعاب والروبوتات الذكية.",
                "✅ Julia – لغة جديدة قوية في حسابات AI السريعة.",
              ]),
              _buildSectionTitle("🔹 3. كيف تبدأ في الذكاء الاصطناعي؟"),
              _buildBulletPoints([
                "1️⃣ ابدأ بتعلم Python.",
                "2️⃣ ادرس الرياضيات والإحصاء لفهم الخوارزميات.",
                "3️⃣ تعلم مكتبات ML مثل Scikit-learn, TensorFlow, PyTorch.",
                "4️⃣ جرب مشاريع عملية مثل Chatbots، تحليل الصور، وتوقع البيانات.",
                "5️⃣ ادخل تحديات Kaggle لاكتساب الخبرة العملية.",
              ]),
            ],
          ),
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
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
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
                    const Text("• ",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Expanded(
                        child:
                            Text(point, style: const TextStyle(fontSize: 16))),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
