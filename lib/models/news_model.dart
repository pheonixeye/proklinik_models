import 'package:equatable/equatable.dart';
import 'package:proklinik_models/models/base_notification_data.dart';

class News extends BaseNotificationData with EquatableMixin {
  final String id;
  final String title;
  final String body;
  final String imageUrl;

  const News({
    required this.id,
    required this.title,
    required this.body,
    required this.imageUrl,
  });

  News copyWith({
    String? id,
    String? title,
    String? body,
    String? imageUrl,
  }) {
    return News(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': body,
      'image_url': imageUrl,
    };
  }

  factory News.fromJson(Map<String, dynamic> map) {
    return News(
      id: map['id'] as String,
      title: map['title'] as String,
      body: map['body'] as String,
      imageUrl: map['image_url'] as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, title, body, imageUrl];
}
