# BiteGo MVP (Flutter)

مشروع MVP بسيط لتطبيق توصيل فيديو-محوري: يحتوي على:
- Feed عمودي يحاكي فيديوهات الأطباق (صور demo).
- شاشة طلب بسيطة مع محاكاة "Auto Motion" لاختيار السائق.
- لوحة متجر بسيطة، لوحة سائق، رفع فيديو بسيط.

## تشغيل المشروع
1. ثبت Flutter SDK
2. أنشئ مشروع جديد أو انسخ هذا المشروع إلى مجلد.
3. شغّل `flutter pub get` ثم `flutter run`.

## بناء APK
1. اتبع خطوات توليد keystore وتعديل android/key.properties كما في المستندات.
2. شغّل `flutter build apk --release`.
3. ستجد `app-release.apk` في `build/app/outputs/flutter-apk/`.

