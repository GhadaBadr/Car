// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class DetailedController extends GetxController {
  final count = 0.obs;

  final cardesc = [
    {'url': "https://i.ibb.co/k9NNn33/Image-1.png"}
  ].obs;

  final titlede = ["يوكن بحالة جيدة", "8,700 ", "مكفولة حتى 70000  كم"].obs;
  final colList = [
    {'title': "اللون الخارجى", 'icon': 63155, 'des': "ابيض"},
    {'title': "اللون الداخلى", 'icon': 61381, 'des': "بيج"},
    {'title': "نوع المقعد", 'icon': 63018, 'des': "     مخمل"},
    {'title': "فتحة السقف", 'icon': 61814, 'des': ""},
    {'title': "كاميرا خلفية", 'icon': 62107, 'des': ""},
    {'title': "سينسر", 'icon': 57661, 'des': "         أمامى - خلفى   "},
    {'title': "سليندر", 'icon': 60534, 'des': "         6"},
    {'title': "ناقل الحركة", 'icon': 61227, 'des': " اوتوماتيك"},
  ].obs;

  final desdata = [
    {
      'desdata':
          "رنجات المنيوم 18 انش اسود وكروم - ديكور خشب + كروم - مقعد السائق كهربائى - دوسات جانبية - تحكم بالمقود مع تعديل يدوي - F1 - نظام المرتفعات - سايد بريك كهربائى - مراّة داخليك اوتو - USB- Traction off- شاحن كهربائى - 7 مقاعد الخلفى  والوسطى قابل للاغلاق - جناح خلفى  - عواكس خلفية - سيرفس منتظم بالوكالة "
    }
  ].obs;
  // ignore: non_constant_identifier_names
  final GridlistData = [
    {
      'url': 'https://i.ibb.co/k9NNn33/Image-1.png',
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
    {
      'url': 'https://i.ibb.co/G385DLx/Image-11.png',
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
    {
      'url': 'https://i.ibb.co/k9NNn33/Image-1.png',
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
    {
      'url': 'https://i.ibb.co/G385DLx/Image-11.png',
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
