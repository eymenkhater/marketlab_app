class SortingQuery {
  SortingQuery({this.inside, this.field, this.sort});
  String inside;
  String field;
  String sort;

  factory SortingQuery.fromJson(Map<String, dynamic> json) => SortingQuery(
        inside: json["in"] == null ? null : json["in"],
        field: json["field"] == null ? null : json["field"],
        sort: json["sort"] == null ? null : json["sort"],
      );

  Map<String, dynamic> toJson() => {
        "in": inside == null ? null : inside,
        "field": field == null ? null : field,
        "sort": sort == null ? null : sort,
      };
}
