import 'package:flutter/material.dart';

class NotificationCard {
  final DateTime date;
  final Widget leading;
  final String title;
  final String subtitle;
  final int documentId;
  final bool? requiresReview;

  const NotificationCard(
      {required this.date,
      required this.leading,
      required this.title,
      required this.subtitle,
      required this.documentId,
      this.requiresReview});
}
