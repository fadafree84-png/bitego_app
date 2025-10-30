import 'package:flutter/material.dart';

class DriverPanel extends StatelessWidget {
  const DriverPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة السائق')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('الطلبات لاحقًا')),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () {}, child: const Text('تحديث الحالة: متاح/مشغول')),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () {}, child: const Text('إحصائيات')),          
          ],
        ),
      ),
    );
  }
}
