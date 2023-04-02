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
            Row(
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.circle_rounded,
                  color: Colors.yellow,
                  size: 10,
                ),
                Icon(
                  Icons.circle_rounded,
                  color: Colors.green,
                  size: 10,
                ),
                Icon(
                  Icons.circle_rounded,
                  color: Colors.red,
                  size: 10,
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.all(15.0),
              leading: Image.asset(
                article.imageUrl,
              ),
              title: Text(
                article.title + "\n",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red),
                textAlign: TextAlign.left,
              ),
              subtitle: Text(
                Article.slice(article.details),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
