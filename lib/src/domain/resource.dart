class Resource {
  Resource({this.type, this.name, this.baseUrl, this.imageUrl});
  int type;
  String name;
  String baseUrl;
  String imageUrl;

  factory Resource.fromJson(Map<String, dynamic> json) => Resource(
        type: json["type"] == null ? null : json["type"],
        name: json["name"] == null ? null : json["name"],
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
        imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "name": name == null ? null : name,
        "baseUrl": baseUrl == null ? null : baseUrl,
        "imageUrl": imageUrl == null ? null : imageUrl,
      };
}
