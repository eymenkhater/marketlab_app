class SearchingQuery {
  SearchingQuery({this.inside, this.field, this.keyword});
  String inside;
  String field;
  String keyword;

  factory SearchingQuery.fromJson(Map<String, dynamic> json) => SearchingQuery(
        inside: json["in"] == null ? null : json["in"],
        field: json["field"] == null ? null : json["field"],
        keyword: json["keyword"] == null ? null : json["keyword"],
      );

  Map<String, dynamic> toJson() => {
        "in": inside == null ? null : inside,
        "field": field == null ? null : field,
        "keyword": keyword == null ? null : keyword,
      };
}
