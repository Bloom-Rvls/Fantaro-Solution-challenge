import 'package:flutter/material.dart';

import '../models/articles.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(20.0),
      shadowColor: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset(article.imageUrl),
          ),
          
          Expanded(
            child: Column(
              children: [
              Row( 
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  IconButton(
                    icon: Icon(
                      Icons.archive_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: null, 
                              
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.circle_rounded, color: Colors.yellow,size: 15,),
                  Icon(Icons.circle_rounded, color: Colors.green, size: 15,),
                  Icon(Icons.circle_rounded, color: Colors.red,size: 15,),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Text(
                  article.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.centerLeft,
                child: Text(Article.slice(article.details)),
              ),
              
            ],
            ),
            
          ),
        ],
      ),
    );
  }
}
