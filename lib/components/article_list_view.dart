import 'package:fantaro_gsc2023/components/article_card.dart';
import 'package:fantaro_gsc2023/models/articles.dart';
import 'package:flutter/material.dart';

class ArticlesListView extends StatelessWidget {
  final List<Article> articles;

  const ArticlesListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          
          Container(
            padding: const EdgeInsets.all(10.0),
            height:400,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return buildCard(article);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 16,
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCard(Article article) {
  return ArticleCard(article: article);
}
