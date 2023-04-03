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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      article.imageUrl,
                      height: 250.0,
                      width: 350.0,
                    ),
                  ),
                  Container(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      IconButton(
                        icon: Icon(
                          Icons.archive_sharp,
                          size: 30,
                          color: Color.fromARGB(240, 8, 52, 88),
                        ),
                        onPressed: null,
                      ),
                    ],
                    ),
                  ),
                  Text(
                    article.title + "\n",
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 20.0),
                    
                  ),
                  Text("\n" + article.danger, textAlign: TextAlign.justify),
                  Text(
                    "\n" + article.solutionTitle,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(240, 8, 52, 88),
                        fontSize: 20.0),
                  ),
                  Text("\n" + article.solutions, textAlign: TextAlign.justify),
                ],
              )),
        ));
  }

  Widget buildCard(Article article) {
    return ArticleCard(article: article);
  }
}
