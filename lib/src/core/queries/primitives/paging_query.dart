class PagingQuery {
  PagingQuery({this.page, this.itemsPerPage, this.total});
  int page;
  int itemsPerPage;
  int total;

  factory PagingQuery.fromJson(Map<String, dynamic> json) => PagingQuery(
        page: json["page"] == null ? null : json["page"],
        itemsPerPage: json["itemsPerPage"] == null ? null : json["itemsPerPage"],
        total: json["total"] == null ? null : json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page == null ? null : page,
        "itemsPerPage": itemsPerPage == null ? null : itemsPerPage,
        "total": total == null ? null : total,
      };
}
