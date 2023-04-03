import 'package:flutter/material.dart';
import 'package:namer_app/components/article_detailed.dart';

import '../models/articles.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticleDetailedView(
                    article: article,
                  )),
        )
      },
      child: Card(
        elevation: 4.0,
        margin: const EdgeInsets.all(20.0),
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.asset(
                article.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            
            
            
            ListTile(
              contentPadding: EdgeInsets.all(15.0), 
              title: Text(
                article.title + "\n",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red),
                textAlign: TextAlign.left,
              ),
              subtitle: Text(
                Article.slice(article.danger),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
