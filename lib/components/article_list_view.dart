import 'package:flutter/material.dart';

import '../components/article_card.dart';
import '../models/articles.dart';

class ArticlesListView extends StatelessWidget {
  final List<Article> articles;

  const ArticlesListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Info Dangers',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(240, 8, 52, 88),
                fontSize: 30.0),
            textAlign: TextAlign.start,
          ),

          // ignore: prefer_const_constructors
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return buildCard(article);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(Article article) {
    return ArticleCard(article: article);
  }
}
