import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final double starSize;
  final Color color;

  StarRating({
    super.key,
    required this.rating,
    this.starSize = 24.0,
    Color? color,
  }) : color = color ?? BranaColor.StarColor;

  @override
  Widget build(BuildContext context) {
    final clampedRating = rating.clamp(0.0, 5.0);
    final fullStars = clampedRating.floor();
    final hasHalfStar = (clampedRating - fullStars) >= 0.5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < fullStars; i++)
          Icon(Icons.star, color: color, size: starSize),
        if (hasHalfStar)
          Icon(Icons.star_half, color: color, size: starSize),
        for (int i = 0; i < 5 - fullStars - (hasHalfStar ? 1 : 0); i++)
          Icon(Icons.star_border, color: color, size: starSize),
      ],
    );
  }
}