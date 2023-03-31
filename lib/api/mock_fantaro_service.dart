import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/articles.dart';

class MockFantaroService {
  Future<List<Article>> getArticles() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString =
        await _loadAsset("assets/data/articles.json");

    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['articles'] != null) {
      final articles = <Article>[];
      json['articles'].forEach((v) {
        articles.add(Article.fromJson(v));
      });
      return articles;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
