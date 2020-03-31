class FilteringQuery {
  FilteringQuery({this.inside, this.field, this.value});
  String inside;
  String field;
  String value;

  factory FilteringQuery.fromJson(Map<String, dynamic> json) => FilteringQuery(
        inside: json["in"] == null ? null : json["in"],
        field: json["field"] == null ? null : json["field"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "in": inside == null ? null : inside,
        "field": field == null ? null : field,
        "value": value == null ? null : value,
      };
}
