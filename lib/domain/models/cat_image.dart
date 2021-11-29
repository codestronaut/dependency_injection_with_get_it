class CatImage {
  String link;

  CatImage(this.link);

  factory CatImage.fromJson(Map<String, dynamic> json) =>
      CatImage(json['link']);

  Map<String, dynamic> toJson() => {
        'link': link,
      };
}
