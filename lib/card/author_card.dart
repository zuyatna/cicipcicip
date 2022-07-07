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
        // TODO 3: Add alignment
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
          // TODO 2: Add IconButton
        ],
      ),
    );
  }
}
