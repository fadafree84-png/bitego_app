import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

// Simple vertical swiper that simulates video feed with images/placeholders
class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  final List<String> demoImages = const [
    'https://picsum.photos/800/1400?image=10',
    'https://picsum.photos/800/1400?image=20',
    'https://picsum.photos/800/1400?image=30',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.network(demoImages[index % demoImages.length], fit: BoxFit.cover),
              Positioned(
                left: 16,
                bottom: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('مطعم التجربة #\${index+1}', style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/order', arguments: {'title': 'طبق من المطعم #\${index+1}'}),
                      child: const Text('اطلب الآن'),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/restaurant'),
                      child: const Text('لوحة المتجر'),
                    ),
                  ],
                ),
              )
            ],
          );
        },
        itemCount: 3,
        scrollDirection: Axis.vertical,
        loop: true,
      ),
    );
  }
}
