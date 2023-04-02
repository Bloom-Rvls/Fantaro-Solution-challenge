import 'package:fantaro_gsc2023/api/mock_fantaro_service.dart';
import 'package:fantaro_gsc2023/components/article_list_view.dart';
import 'package:flutter/material.dart';

import '../models/articles.dart';

class ArticlesScreen extends StatelessWidget {
  final mockService = MockFantaroService();

  ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getArticles(),
      builder: (context, AsyncSnapshot<List<Article>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final articles = snapshot.data ?? [];
          
          return ArticlesListView(articles: articles);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
