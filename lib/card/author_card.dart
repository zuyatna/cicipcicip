import 'package:flutter/material.dart';
import 'package:cicipcicip/theme/cicipcicip_theme.dart';
import 'package:cicipcicip/avatar/circle_image.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({Key? key, required this.authorName, required this.title, this.imageProvider}) : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(imageRadius: 28, imageProvider: imageProvider,),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: CicipcicipTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: CicipcicipTheme.lightTextTheme.headline3,
                  )
                ],
              )
            ],
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey,
            onPressed: () {
              const snackBar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          )
        ],
      ),
    );
  }
}
