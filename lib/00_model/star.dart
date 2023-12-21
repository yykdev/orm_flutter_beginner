class Star {
  int id;
  String title;
  String subTitle;
  String imageUrl;
  String description;

//<editor-fold desc="Data Methods">
  Star({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.description,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Star &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          subTitle == other.subTitle &&
          imageUrl == other.imageUrl &&
          description == other.description);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      subTitle.hashCode ^
      imageUrl.hashCode ^
      description.hashCode;

  @override
  String toString() {
    return 'Star{ id: $id, title: $title, subTitle: $subTitle, imageUrl: $imageUrl, description: $description,}';
  }

  Star copyWith({
    int? id,
    String? title,
    String? subTitle,
    String? imageUrl,
    String? description,
  }) {
    return Star(
      id: id ?? this.id,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'subTitle': this.subTitle,
      'imageUrl': this.imageUrl,
      'description': this.description,
    };
  }

  factory Star.fromMap(Map<String, dynamic> map) {
    return Star(
      id: map['id'] as int,
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
    );
  }

//</editor-fold>
}
