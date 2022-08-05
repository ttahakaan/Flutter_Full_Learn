// ignore_for_file: file_names

class LoadaData {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  LoadaData({this.userId, this.id, this.body, this.title});

  factory LoadaData.fromJson(Map<String, dynamic> json) {
    return LoadaData(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body']
    );
  }
}
