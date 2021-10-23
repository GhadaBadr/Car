// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  final carlist = [
    {'id': 0, 'title': "جيلي", 'url': "https://i.ibb.co/k9NNn33/Image-1.png"},
    {
      'id': 1,
      'title': "بى ام دابليو",
      'url': "https://i.ibb.co/KcndGFK/Image-5.png"
    },
    {'id': 2, 'title': "تويوتا", 'url': "https://i.ibb.co/B6sTsv8/Image-6.png"},
    {'id': 3, 'title': "جيلي", 'url': "https://i.ibb.co/G385DLx/Image-11.png"},
    {'id': 4, 'title': "جيلي", 'url': "https://i.ibb.co/k9NNn33/Image-1.png"},
    {
      'id': 5,
      'title': "بى ام دابليو",
      'url': "https://i.ibb.co/KcndGFK/Image-5.png"
    },
    {'id': 6, 'title': "تويوتا", 'url': "https://i.ibb.co/B6sTsv8/Image-6.png"},
    {'id': 7, 'title': "جيلي", 'url': "https://i.ibb.co/G385DLx/Image-11.png"},
  ].obs;

  final buttonlisT = [
    {'title': "آسيوي"},
    {'title': "أوروبي"},
    {'title': "أمريكي"},
  ].obs;
  final GridlistData = [
    {
      'url': "https://i.ibb.co/k9NNn33/Image-1.png",
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
    {
      'url': "https://i.ibb.co/G385DLx/Image-11.pngv ",
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
    {
      'url': "https://i.ibb.co/k9NNn33/Image-1.png",
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
    {
      'url': "https://i.ibb.co/G385DLx/Image-11.pngv ",
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
    {
      'url': "https://i.ibb.co/k9NNn33/Image-1.png",
      't1': "جى أم سي",
      't2': "يوكن",
      't3': "الفئة الرابعة",
      'price': "12,700",
      'mnau': "2019",
      'km': "20000",
      'mak': "2021"
    },
    {
      'url': "https://i.ibb.co/G385DLx/Image-11.pngv ",
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
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
