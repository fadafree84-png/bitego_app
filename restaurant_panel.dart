import 'package:flutter/material.dart';
import '../widgets/video_uploader.dart';
import 'dart:io';

class RestaurantPanel extends StatelessWidget {
  const RestaurantPanel({super.key});

  void _onUpload(File file) {
    // Placeholder: in real app you'd call API to upload
    debugPrint('Uploaded file: \${file.path}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة المتجر')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('قائمة الطلبات الواردة')),
            const SizedBox(height: 12),
            const Text('رفع فيديو/صورة للطبق:'),
            const SizedBox(height: 8),
            VideoUploader(onUpload: _onUpload),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () {}, child: const Text('إعدادات المتجر')),
          ],
        ),
      ),
    );
  }
}
