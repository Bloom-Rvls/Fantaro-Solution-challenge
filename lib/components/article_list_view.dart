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
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(
                'Liste des articles :',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
              ),
              // ignore: prefer_const_constructors
              ListView.separated(
                  shrinkWrap: true,
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    final article = articles[index];
                    return buildCard(article);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 16,
                    );
                  }),
            ],
          )),
    );
  }

  Widget buildCard(Article article) {
    return ArticleCard(article: article);
  }
}
