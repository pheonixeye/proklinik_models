class ServerNotification {
  ServerNotification({
    required this.token,
    required this.title,
    required this.notificationType,
    this.body,
    this.data,
  });

  final String? token;
  final String title;
  final NotificationType notificationType;
  final String? body;
  final Map<String, dynamic>? data;

  Map<String, dynamic> toJson() {
    return {
      'message': {
        'token': token,
        'notification': {
          'title': title,
          'body': body ?? '',
        },
        'data': data == null
            ? {}
            : {'notification_type': notificationType.value, ...data!},
      },
    };
  }
}

enum NotificationType {
  newBooking('new_booking'),
  newInvoice('new_invoice'),
  newNews('new_news'),
  newReview('new_review'),
  unknown('unknown');

  final String value;

  const NotificationType(this.value);

  factory NotificationType.fromString(String? value) {
    return switch (value) {
      'new_booking' => NotificationType.newBooking,
      'new_invoice' => NotificationType.newInvoice,
      'new_news' => NotificationType.newNews,
      'new_review' => NotificationType.newReview,
      _ => NotificationType.unknown,
    };
  }
}
