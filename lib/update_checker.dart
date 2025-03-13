import 'dart:convert';
import 'dart:io'; // لاستدعاء الأوامر الخارجية
import 'package:http/http.dart' as http;

Future<void> checkForUpdates() async {
  final url = Uri.parse(
      'https://api.github.com/repos/Boda2dev/Assuit/releases/latest'); // رابط المستودع الصحيح

  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final latestVersion = data['tag_name']; // رقم الإصدار الجديد
      final downloadUrl =
          data['assets'][0]['browser_download_url']; // رابط التحميل

      if (latestVersion != "v1.0.0") {
        // قارن بالإصدار الحالي
        print('🔔 تحديث جديد متاح: $latestVersion');
        _openUrl(downloadUrl);
      }
    }
  } catch (e) {
    print('❌ فشل التحقق من التحديثات: $e');
  }
}

// فتح الرابط بدون مكتبة url_launcher
void _openUrl(String url) {
  if (Platform.isWindows) {
    Process.run(
        'cmd', ['/c', 'start', url]); // فتح الرابط في المتصفح على الويندوز
  } else if (Platform.isMacOS) {
    Process.run('open', [url]); // فتح الرابط على الماك
  } else if (Platform.isLinux) {
    Process.run('xdg-open', [url]); // فتح الرابط على لينكس
  } else {
    print('⚠️ النظام غير مدعوم لفتح الروابط تلقائيًا.');
  }
}
