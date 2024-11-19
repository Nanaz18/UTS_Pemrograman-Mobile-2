import 'package:flutter/material.dart';
import 'package:loginuser/model/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  movie.image,
                  width: 100,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox.square(dimension: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    movie.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox.square(dimension: 6),
                  Text(
                    movie.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox.square(dimension: 6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
