import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/order_provider.dart';

class OrderFlowScreen extends StatelessWidget {
  const OrderFlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final title = args?['title'] ?? 'طلب جديد';
    final order = Provider.of<OrderProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text(title, style: const TextStyle(fontFamily: ''))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('تفاصيل الطلب', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('السعر: 120 جنيه'),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                order.createOrder(title);
                showDialog(context: context, builder: (_) => const OrderPlacedDialog());
              },
              child: const Text('تأكيد واطلب'),
            )
          ],
        ),
      ),
    );
  }
}

class OrderPlacedDialog extends StatelessWidget {
  const OrderPlacedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final order = Provider.of<OrderProvider>(context);
    return AlertDialog(
      title: const Text('تم إنشاء الطلب'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('يتم الآن البحث عن سائق... (محاكاة Auto Motion)'),
          const SizedBox(height: 12),
          Text('حالة الطلب: \${order.status}'),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('حسناً')),
        ],
      ),
    );
  }
}
