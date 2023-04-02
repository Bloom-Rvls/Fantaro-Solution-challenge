import 'package:flutter/material.dart';

import '../components/article_card.dart';
import '../models/articles.dart';

class ArticleDetailedView extends StatelessWidget {
  final Article article;

  const ArticleDetailedView({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    article.title + "\n",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      article.imageUrl,
                      height: 250.0,
                      width: 350.0,
                    ),
                  ),
                  Text("\n" + article.details),
                ],
              )),
        ));
  }

  Widget buildCard(Article article) {
    return ArticleCard(article: article);
  }
}
