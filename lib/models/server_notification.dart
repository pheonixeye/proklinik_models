class ServerNotification {
  ServerNotification({
    required this.token,
    required this.title,
    this.body,
    this.data,
  });

  final String? token;
  final String title;
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
        'data': data ?? {},
      },
    };
  }
}
